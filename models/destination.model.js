const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const destinationSchema = new Schema({
  placename: {
    type: String,
    required: true,
  },
  parent:{
    type: mongoose.Schema.Types.ObjectId,
    ref: "Destinations"
  },
  
  location: {
    type: [Number],
  },
});

const destinations = mongoose.model("Destinations", destinationSchema);

module.exports = destinations;
