const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const destinationSchema = new Schema({
  placename: {
    type: String,
    required: true,
  },
  country: {
    type: String,
    required: true,
  },
});

const destinations = mongoose.model("Destinations", destinationSchema);

module.exports = destinations;
