const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const postSchema = new Schema({
  caption: {
    type: String,
    required: true,
  },
  likes: {
    type: Number,
    default: 0,
  },
  file: {
    type: String,
    // required: true,
  },
  postedby: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "User"
  }
});

const posts = mongoose.model("Post", postSchema);

module.exports = posts;
