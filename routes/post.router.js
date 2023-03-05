const express = require("express");
const destinations = require("../models/destination.model");
const posts = require("../models/post.model");
const router = express.Router();
const fetchUser = require("../middleware/fetchUser");

router.post(
  "/postpost",
  fetchUser,
  async (req, res) => {
    let success = false;
    try {
      const { caption, likes, file} = req.body;
    //   const errors = validationResult(req);
    //   if (!errors.isEmpty()) {
    //     res.status(400).json({ errors: errors.array() });
    //   }
      // console.log(req.body);
      const post = await posts.create({
        caption: caption,
        likes: likes,
        file,
        postedby:req.user.id,
      });
      success = true;
      console.log(post);
      res.json({ success });
    } catch (err) {
      console.log(err);
      res.status(500).send("Some error occured");
    }
  }
);

router.get("/allPosts", async (req, res) => {
  try {
    const post = await posts.find({});
    res.json({ post });
  } catch (err) {
    console.log(err);
    res.json({ status: "error", error: err });
  }
});

module.exports = router;
