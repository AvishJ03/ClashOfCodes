const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const planSchema = new Schema({
  userID: {
    type: mongoose.Schema.Types.ObjectId,
    required: true,
},
from: {
    type: [Number],
    default: [19.107683, 72.835752],
    required: true,
},
to: {
    type: mongoose.Schema.Types.ObjectId,
    required: true,
  },
});

const plans = mongoose.model("Plans", planSchema);

module.exports = plans;
