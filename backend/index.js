const express = require("express");
const app = express();
const cors = require("cors");
const bodyParser = require("body-parser");
const dotenv = require("dotenv").config();
const jwt = require("jsonwebtoken");

const http = require("http");
const os = require("os");
const cluster = require("cluster");
const numCPUs = os.cpus().length;

const authRoute = require("./routes/authRoute");
const userRoute = require("./routes/userRoute");
const prodRoute = require("./routes/prodRoute");
const { errorHandler } = require("./middleware/errorHandling");
app.use(cors());
app.use(bodyParser.json());

app.use("/api/auth", authRoute);
app.use("/api/user", userRoute);
app.use("/api/product", prodRoute);

//cluster for that
// app.use(notFound);
app.use(errorHandler);

app.get("*", (req, res) => {
  res.json({
    message: "Backend is live and deployed on Vercel!",
    status: "success",
    timestamp: new Date().toISOString(),
  });
});

const PORT = process.env.PORT || 8000;
app.listen(PORT, () => {
  console.log(`Server running successfully on port ${PORT}!`);
});
