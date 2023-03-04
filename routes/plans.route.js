const express = require("express");
const plans = require("../models/plan.model");
const router = express.Router();
const fetchUser = require("../middleware/fetchUser");

router.post("/addPlan", fetchUser, async (req, res) => {
  try {
    const plan = await plans.create({
      userID: req.user.id,
      destinationID: req.body.destinationID,
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

router.get("/allPlans", fetchUser, async (req, res) => {
  try {
    const plan = await plans.find({ userID: req.user.id });
    res.json({ plan });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

router.get("/recommendSimilar", fetchUser, async (req, res) => {
  try {
    const plan = await plans.findOne({ _id: req.body.planID });
    const users = [];
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
    res.json({ recommended });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

module.exports = router;
