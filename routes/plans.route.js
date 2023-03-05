const express = require("express");
const users = require("../models/user.model");
const plans = require("../models/plan.model");
const destinations = require("../models/destination.model");
const router = express.Router();
const fetchUser = require("../middleware/fetchUser");

router.post("/addPlan", fetchUser, async (req, res) => {
  try {
    const dest = await destinations.findOne({placename: req.body.placename})
    const plan = await plans.create({
      userID: req.user.id,
      destinationID: dest.id,
      start: req.body.start,
      end: req.body.end,
      budget: req.body.budget,
      interests: req.body.interests,
    });

    res.json({ plan });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

router.post("/addInterests", async (req, res) => {
  try {
    const plan = await plans.findOneAndUpdate({_id: req.body.id}, {
      interests: req.body.interests
    })

    res.json({ plan });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

router.get("/allPlans", fetchUser, async (req, res) => {
  try {
    const plan = await plans.find({ userID: req.user.id });
    res.json({ plan });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

router.post("/recommendSimilar", fetchUser, async (req, res) => {
  try {
    const plan = await plans.findOne({ _id: req.body.planID });
    const recommended = await plans.find({
      destinationID: plan.destinationID,
      userID: { $ne: plan.userID },
      $or: [
        {
          $and: [
            { start: { $gte: plan.start } },
            { start: { $lte: plan.end } },
          ],
        },
        {
          $and: [{ end: { $gte: plan.start } }, { start: { $lte: plan.end } }],
        },
      ],
      interests: { $in: plan.interests },
    });

    const ids = [];
    recommended.forEach((detail) => {
      ids.push(detail.userID);
    });

    const details = await users.find({
      _id: { $in: ids },
    });
    res.json({ recommended, details });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

module.exports = router;
