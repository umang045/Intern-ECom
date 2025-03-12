import React, { lazy, useEffect, useState } from "react";
import {
  createBrowserRouter,
  RouterProvider,
  Outlet,
  Navigate,
  useNavigate,
  BrowserRouter,
  Routes,
  Route,
} from "react-router-dom";

import Navbar from "./Components/Navbar/Navbar";
import Footer from "./Components/Footer/Footer";
import Home from "./Pages/Home/Home";
import { isLogin } from "./utils/AxiosConfig";
import ProtectedRoute from "./Components/ProtectedRoute/ProtectedRoute";
import { SingleProduct } from "./Pages/SingleProduct/SingleProduct";
import MainSellerLayout from "./Components/MainSellerLayout/MainSellerLayout";
import MainAdminLayout from "./Components/MainAdminLayout/MainAdminLayout";

//lazy loading components
const Register = lazy(() => import("./Pages/Register/Register"));
const MyOrder = lazy(() => import("./Pages/MyOrder/MyOrder"));
const Checkout = lazy(() => import("./Pages/Checkout/Checkout"));
const Profile = lazy(() => import("./Pages/Profile/Profile"));
const Cart = lazy(() => import("./Pages/Cart/Cart"));
const Products = lazy(() => import("./Pages/Products/Products"));
const ResetPass = lazy(() => import("./Pages/ResetPass/ResetPass"));
const Login = lazy(() => import("./Pages/Login/Login"));
const SellerAddProduct = lazy(() =>
  import("./Pages/Seller/SellerAddProduct/SellerAddProduct")
);
const SellerProductList = lazy(() =>
  import("./Pages/Seller/SellerProductList/SellerProductList")
);
const SellerOrderList = lazy(() =>
  import("./Pages/Seller/SellerOrderList/SellerOrderList")
);
const SellerSingleOrder = lazy(() =>
  import("./Pages/Seller/SellersSingleOrder/SellerSingleOrder")
);
const SellerProductTransaction = lazy(() =>
  import("./Pages/Seller/SellerProductTransaction/SellerProdTran")
);

const AdminUserList = lazy(() =>
  import("./Pages/Admin/AdminUserList/AdminUserList")
);
const AdminSellerList = lazy(() =>
  import("./Pages/Admin/AdminSellerList/AdminSellerList")
);

const App = () => {
  const [role, setRole] = useState("admin");

  //check login or not
  useEffect(() => {
    isLogin();
  }, [isLogin()]);

  return (
    <>
      <BrowserRouter>
        <Navbar></Navbar>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/login" element={isLogin() ? <Home /> : <Login />} />
          <Route
            path="/register"
            element={isLogin() ? <Home /> : <Register />}
          />
          <Route path="/products" element={<Products />} />
          <Route path="/products/:id" element={<SingleProduct />} />
          <Route
            path="/profile"
            element={<ProtectedRoute element={<Profile />} />}
          />
          <Route
            path="/resetPassword/:token"
            element={<ProtectedRoute element={<ResetPass />} />}
          />
          <Route path="/cart" element={<ProtectedRoute element={<Cart />} />} />
          <Route
            path="/checkout"
            element={<ProtectedRoute element={<Checkout />} />}
          />
          <Route
            path="/orders"
            element={<ProtectedRoute element={<MyOrder />} />}
          />
          <Route
            path="/seller"
            element={
              <ProtectedRoute
                element={<MainSellerLayout />}
                requiredRole="seller"
              />
            }
          >
            <Route path="addProduct" element={<SellerAddProduct />} />{" "}
            <Route path="sellerProductList" element={<SellerProductList />} />{" "}
            <Route
              path="sellerProductList/transaction/:product_id"
              element={<SellerProductTransaction />}
            />{" "}
            <Route path="sellerOrderList" element={<SellerOrderList />} />{" "}
            <Route
              path="sellerOrderList/:order_id"
              element={<SellerSingleOrder />}
            />{" "}
          </Route>
          <Route
            path="/superadmin"
            element={
              <ProtectedRoute
                element={<MainAdminLayout />}
                requiredRole="superadmin"
              />
            }
          >
            {" "}
            <Route path="adminUserList" element={<AdminUserList />} />{" "}
            <Route path="adminSellerList" element={<AdminSellerList />} />{" "}
          </Route>
        </Routes>
        <Footer></Footer>
      </BrowserRouter>
    </>
  );
};

export default App;
