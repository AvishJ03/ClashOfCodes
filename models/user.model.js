const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const userSchema = new Schema({
  name: {
    type: String,
    required: true,
  },
  email: {
    type: String,
    required: true,
    unique: true,
  },
  password: {
    type: String,
    required: true,
  },
  number: {
    type: Number,
    required: true,
  },
  address: {
    type: String,
  },
  points: {
    type: Number,
    default: 0,
  },
  avatarImage: {
    type: String,
    default:
      "PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMzEgMjMxIj48cGF0aCBkPSJNMzMuODMsMzMuODNhMTE1LjUsMTE1LjUsMCwxLDEsMCwxNjMuMzQsMTE1LjQ5LDExNS40OSwwLDAsMSwwLTE2My4zNFoiIHN0eWxlPSJmaWxsOiM2NDM4Njk7Ii8",
  },
  isAvatarImageSet: {
    type: Boolean,
    default: true,
  },
});

const users = mongoose.model("User", userSchema);

module.exports = users;
