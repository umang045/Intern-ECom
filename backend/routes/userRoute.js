const express = require("express");
const {
  getUser,
  getAllUsers,
  addToCart,
  getCart,
  removeFromCart,
  updateQuantity,
  updateUserProfile,
  getUserById,
  addUsersAddress,
  checkAddress,
  fetchUsersAddress,
  delUsersAddress,
  checkProdCart,
  placeOrder,
  getUsersOrder,
  getUsersOrdersProd,
  delUserOrder,
  fetchSellerOrders,
  fetchSingleSellerOrders,
  totalUsers,
  getOrderByStatus,
  getOrderByDate,
  onOffEvent,
  getStatusCount,
  getYearWiseSell,
  getSellersOrderCount,
  getSellersAmountCount,
  getSellerAllProductCount,
  getAllProductCountForAdmin,
  getOrderCountForAdmin,
  getAmountCountForAdmin,
  getStatusCountForAdmin,
  getOrderForAdmin,
  getUsersOrderPaymentDetails,
} = require("../controller/user");
const { updateProfilePic } = require("../controller/auth");
const { authMiddleware } = require("../middleware/authMiddleare");
const router = express.Router();

// router.get("/admin/getAllOrder",authMiddleware, getOrderForAdmin);
router.get("/seller/getOrder", authMiddleware, fetchSellerOrders);
router.get(
  "/getUsersOrdersPaymentDetails/:order_id",
  authMiddleware,
  getUsersOrderPaymentDetails
);

router.get("/singleUser", authMiddleware, getUserById);
router.get("/getUserOrder", authMiddleware, getUsersOrder);
router.get("/getCart", authMiddleware, getCart);
router.get("/seller/getOrderStatusCount", authMiddleware, getStatusCount);
router.get("/seller/getSellersTotalSells", authMiddleware, getYearWiseSell);
router.get("/seller/filterOrder/time/:dif", authMiddleware, getOrderByDate);
router.get("/seller/getAllOrderCount", authMiddleware, getSellersOrderCount);
router.get("/seller/getAllSellCount", authMiddleware, getSellersAmountCount);
router.get("/seller/getAllProdCount", authMiddleware, getSellerAllProductCount);

router.get(
  "/admin/getAllProdCountForAdmin",
  authMiddleware,
  getAllProductCountForAdmin
);
router.get("/admin/getOrdersForAdmin", authMiddleware, getOrderForAdmin);
router.get(
  "/admin/getAllOrderCountForAdmin",
  authMiddleware,
  getOrderCountForAdmin
);
router.get(
  "/admin/getAllAmountCountForAdmin",
  authMiddleware,
  getAmountCountForAdmin
);
router.get("/admin/getStatusCount", authMiddleware, getStatusCountForAdmin);

router.post("/addorder", authMiddleware, placeOrder);
router.post("/delUserOrder", authMiddleware, delUserOrder);
router.post("/addAddress", authMiddleware, checkAddress, addUsersAddress);
router.get("/getAddress", authMiddleware, fetchUsersAddress);
router.get("/totalUser", authMiddleware, totalUsers);
router.get("/getUserOrderProd/:order_id", getUsersOrdersProd);
router.delete("/delAddress/:address_id", authMiddleware, delUsersAddress);
router.get("/find/all", getAllUsers);
router.post("/checkCart", checkProdCart);

router.post("/addCart", authMiddleware, addToCart);
router.put("/updatePic", authMiddleware, updateProfilePic);
router.delete("/delCart/:id", removeFromCart);
router.put("/updtQnty", authMiddleware, updateQuantity);

router.get(
  "/seller/filterOrder/status/:status",
  authMiddleware,
  getOrderByStatus
);
router.post("/seller/onoffschedule", authMiddleware, onOffEvent);
router.get("/seller/getSinlgeOrder/:order_id", fetchSingleSellerOrders);

module.exports = router;

