const express = require("express");
const {
  registerUser,
  loginUser,
  logOut,
  forgotPass,
  resetPass,
  updateUserProfile,
  chekPassword,
  updatePassword,
  updateProfilePic,
} = require("../controller/auth");
const { authMiddleware } = require("../middleware/authMiddleare");

const router = express.Router();

router.patch("/reset/:passwordResetToken", resetPass);
router.post("/login", loginUser);
router.post("/forgot", forgotPass);
router.put("/updatePass", authMiddleware, updatePassword);
router.post("/register", registerUser);
router.post("/updateProfilePic", authMiddleware, updateProfilePic);
router.post("/logout", logOut);
router.put("/updateProfile", authMiddleware, updateUserProfile);
router.get("/checkPass/:user_id/:password", chekPassword);

module.exports = router;
