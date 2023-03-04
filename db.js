const mongoose = require("mongoose");

mongoose.set("strictQuery", true);

mongoose
  .connect(
    "mongodb+srv://MangoDB:MangoDB@cluster0.y5xsxxq.mongodb.net/?retryWrites=true&w=majority"
  )
  .then(() => {
    console.log("Connected to Mongo");
  });
