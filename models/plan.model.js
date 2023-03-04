const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const planSchema = new Schema({
  userID: {
    type: mongoose.Schema.Types.ObjectId,
    required: true,
    ref: "User",
  },
  destinationID: {
    type: mongoose.Schema.Types.ObjectId,
    required: true,
    ref: "Destinations",
  },
  start: {
    type: String,
    required: true,
  },
  end: {
    type: String,
    required: true,
  },
  budget: {
    type: Number,
  },
  interests: {
    type: [String],
    required: true,
  },
});

const plans = mongoose.model("Plans", planSchema);

module.exports = plans;
