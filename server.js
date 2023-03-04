const express = require("express");
require("./db");
require("dotenv").config();
const cors = require("cors");
const app = express();

const userRouter = require("./routes/user.route");
const destinationRouter = require("./routes/destination.route");
const postRouter = require("./routes/post.router");
const planRouter = require("./routes/plans.route");

app.use(cors());
app.use(express.json());
app.use(userRouter);
app.use(destinationRouter);
app.use(postRouter);
app.use(planRouter);

const port = 5000;

app.get("/", (req, res) => res.send("Hello World!"));
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
