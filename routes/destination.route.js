const express = require("express");
const destinations = require("../models/destination.model");
const router = express.Router();
const fetchUser = require("../middleware/fetchUser");

router.post("/addDestination", async (req, res) => {
  let success = false;
  try {
    const destination = await destinations.create({
      placename: req.body.placename,
      country: req.body.country,
    });

    success = true;
    res.json({ success, destination });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

router.get("/allCities", async (req, res) => {
  try {
    const destination = await destinations.find({ country: req.body.country });
    res.json({ destination });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

module.exports = router;
