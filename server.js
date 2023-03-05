const express = require("express");
require("./db");
require("dotenv").config();
const cors = require("cors");
const app = express();
const socket = require("socket.io");

const userRouter = require("./routes/user.route");
const destinationRouter = require("./routes/destination.route");
const postRouter = require("./routes/post.router");
const planRouter = require("./routes/plans.route");
const messageRouter = require("./routes/messages.route");

app.use(cors());
app.use(express.json());
app.use(userRouter);
app.use(destinationRouter);
app.use(postRouter);
app.use(planRouter);
app.use(messageRouter);

const port = 5000;

app.get("/", (req, res) => res.send("Hello World!"));
const server = app.listen(port, () =>
  console.log(`Example app listening on port ${port}!`)
);

const io = socket(server, {
  cors: {
    origin: "http://localhost:3000",
    credentials: true,
  },
});

global.onlineUsers = new Map();

io.on("connection", (socket) => {
  global.chatSocket = socket;
  socket.on("add-user", (userId) => {
    onlineUsers.set(userId, socket.id);
  });
  socket.on("send-msg", (data) => {
    const sendUserSocket = onlineUsers.get(data.to);
    if (sendUserSocket) {
      socket.to(sendUserSocket).emit("msg-received", data.message);
    }
  });
});