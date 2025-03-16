const express = require("express");
const {
  getAllProduct,
  getSingleProd,
  addReview,
  getAllReviewOfProduct,
  delReview,
  uploadImg,
  delImage,
  addProduct,
  updateProduct,
  deleteProduct,
  getProductsBySellerId,
  searchProd,
  getUsersReview,
  toogleProd,
  getProdTrans,
  getOutOfStockProd,
  updateProdStock,
  getSellerTotalProd,
  getAllColors,
  getFilteredProducts,
  getAllCategory,
  getMinMaxPrice,
  getSingleProdRview,
  toogleSingleReview,
  adminGetAllProductList,
  getProductCount,
  getProductsColor,
} = require("../controller/product");
const { upload } = require("../middleware/uploadImg");
const cloudinary = require("../utils/cloudinary");
const { authMiddleware } = require("../middleware/authMiddleare");
const { getOrderForAdmin } = require("../controller/user");

const router = express.Router();

router.put("/updateProducts", authMiddleware, updateProduct);
router.get("/admin/getAllProduct",authMiddleware, adminGetAllProductList  );
router.get("/getAllProductCount", getProductCount  );
router.get("/getAllProductColors/:product_id",authMiddleware, getProductsColor  );
router.get("/sellerProd",authMiddleware , getProductsBySellerId);
router.get("/getAllReviews", getUsersReview);
router.get("/getSellerTotalProd", authMiddleware, getSellerTotalProd);
router.get("/", getAllProduct);
router.get("/filter", getFilteredProducts);
router.get("/price", getMinMaxPrice);
router.get("/allReviews/:product_id", getSingleProdRview);
router.put("/toogleReview/:review_id", toogleSingleReview);
router.get("/category", getAllCategory);
router.get("/colors", getAllColors);
router.get("/:id", getSingleProd);
router.get("/getProdTrans/:product_id", getProdTrans);
router.post("/review", authMiddleware, addReview);
router.get("/getOutStockProd/:seller_id", getOutOfStockProd);
router.post("/updateStock", updateProdStock);
router.post("/active/:product_id", toogleProd);
router.get("/review/:id", getAllReviewOfProduct);
router.delete("/review/del/:review_id", delReview);
router.post("/getUserReview", getUsersReview);

router.post("/sellerProd/search", searchProd);

router.post("/", authMiddleware , addProduct);
router.delete("/:product_id", deleteProduct);
router.post("/image/upload", upload.single("image"), uploadImg);
router.delete("/image/del/:public_id", delImage);

module.exports = router;
