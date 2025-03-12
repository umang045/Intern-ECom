import React, { useEffect, useState } from "react";
import { useFormik } from "formik";
import { shallowEqual, useDispatch, useSelector } from "react-redux";
import * as yup from "yup";
import { Input, Button, Select, Switch, Modal, ColorPicker, Image } from "antd";
import { useDropzone } from "react-dropzone";
import { useQuill } from "react-quilljs";
import "quill/dist/quill.snow.css";
import { toast } from "react-toastify";
import { useNavigate } from "react-router-dom";
import {
  addSellerProduct,
  deleteImgFromCloudinary,
  uploadImgToCloudinary,
} from "@/Feature/Products/ProductSlice";
import { MdDelete } from "react-icons/md";

let addProductSchema = yup.object({
  title: yup.string().required("Title is required"),
  price: yup.string().required("Price is Required!!"),
  stock: yup.string().required("Stock is Required!!"),
  category_id: yup.string().required("Category is Required!!"),
});

const SellerAddProduct = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const { quill, quillRef } = useQuill();
  const [description, setDescription] = useState("");
  const [selectedColor, setSelectedColor] = useState("#ffffff");
  const [colors, setColors] = useState([]);
  const [sizeOptions] = useState(["S", "M", "L", "XL", "XXL"]);
  const [selectedSizes, setSelectedSizes] = useState([]);
  const [uploadedImgUrl, setUploadedImgUrl] = useState(null);
  const [isVisible, setIsVisible] = useState(false);
  const [tag, setTag] = useState("");
  const [listOfOption, setListOfOption] = useState([]);
  const [selectedTagColor, setSelectedTagColor] = useState("#ffffff");
  const [tagActive, setTagActive] = useState(false);
  const [cloudImagePublicId, setCloudImagePublicId] = useState(null);

  const formik = useFormik({
    initialValues: {
      title: "",
      category_id: "",
      price: "",
      stock: "",
    },
    validationSchema: addProductSchema,
    onSubmit: async (values) => {
      const addProdData = {
        ...values,
        product_tag: tag,
        product_tag_color: selectedTagColor,
        size: selectedSizes,
        tag_active: tagActive,
        description: description,
        colors: colors,
        image: uploadedImgUrl,
      };
      // console.log(addProdData);
      const res = await dispatch(addSellerProduct(addProdData));
      if (addSellerProduct?.fulfilled?.match(res)) {
        toast.success("Product Added!!");
        setTimeout(() => {
          navigate("/seller/sellerProductList");
        },1000);
      }
    },
  });

  useEffect(() => {
    if (quill) {
      quill.on("text-change", (delta, oldDelta, source) => {
        setDescription(quill.root.innerHTML);
      });
    }
  }, [quill]);

  const addColors = (value) => {
    setColors([...colors, value]);
  };

  const removeColors = (index) => {
    setColors(colors.filter((_, i) => i !== index));
  };

  const handleFileDrop = (acceptedFiles) => {
    const file = acceptedFiles[0];
    const formData = new FormData();
    formData.append("image", file);
    cloudImagePublicId != null
      ? dispatch(deleteImgFromCloudinary(public_id))
      : dispatch(uploadImgToCloudinary(formData));
  };

  const { uploadImageToCloud, isLoading } = useSelector(
    (state) => state?.products,
    shallowEqual
  );
  console.log(uploadImageToCloud?.data?.url);
  console.log(uploadImageToCloud?.data?.public_id);

  useEffect(() => {
    if (uploadImageToCloud) {
      setUploadedImgUrl(uploadImageToCloud?.data?.url);
      setCloudImagePublicId(uploadImageToCloud?.data?.public_id);
    }
  }, [uploadImageToCloud, dispatch]);

  const { getRootProps, getInputProps } = useDropzone({
    onDrop: handleFileDrop,
  });

  return (
    <div className="bg-white p-6 rounded-lg shadow-lg ">
      <h1 className="text-2xl font-bold mb-4">Add Product</h1>
      <form action="" onSubmit={formik.handleSubmit}>
        <div className="flex flex-col space-y-1">
          <label
            htmlFor="product-title"
            className="text-sm font-semibold text-gray-500"
          >
            Product Title
          </label>
          <Input
            type="text"
            id="product-title"
            placeholder="Enter title"
            name="title"
            value={formik.values.title}
            onChange={formik.handleChange("title")}
            onBlur={formik.handleBlur("title")}
          />
          <div className="text-red-700">
            {formik.touched.title && formik.errors.title}
          </div>
        </div>
        <div className="w-full flex flex-col space-y-1">
          <label
            htmlFor="product-title"
            className="text-sm font-semibold text-gray-500"
          >
            Description
          </label>

          <div style={{ width: "100%", height: 200 }}>
            <div ref={quillRef} />
          </div>
        </div>
        <div className="flex w-full items-center justify-between gap-1 pt-14">
          <div className="w-1/3 flex flex-col space-y-1">
            <label
              htmlFor="product-category"
              className="text-sm font-semibold text-gray-500"
            >
              Category
            </label>
            <Select
              id="product-category"
              name="category_id"
              placeholder="Select Category"
              value={formik.values.category_id}
              onChange={formik.handleChange("category_id")}
              onBlur={formik.handleBlur("category_id")}
            >
              <Option value="1">mens</Option>
              <Option value="2">womens</Option>
              <Option value="3">kids</Option>
            </Select>
            <div className="text-red-700">
              {formik.touched.category_id && formik.errors.category_id}
            </div>
          </div>
          <div className="w-1/3 flex flex-col space-y-1">
            <label
              htmlFor="product-title"
              className="text-sm font-semibold text-gray-500"
            >
              Product Price
            </label>
            <Input
              type="number"
              id="product-title"
              placeholder="Enter title"
              name="price"
              value={formik.values.price}
              onChange={formik.handleChange("price")}
              onBlur={formik.handleBlur("price")}
            />
            <div className="text-red-700">
              {formik.touched.price && formik.errors.price}
            </div>
          </div>
          <div className="w-1/3 flex flex-col space-y-1">
            <label
              htmlFor="product-title"
              className="text-sm font-semibold text-gray-500"
            >
              Product Stock
            </label>
            <Input
              type="number"
              id="product-title"
              placeholder="Enter title"
              name="stock"
              value={formik.values.stock}
              onChange={formik.handleChange("stock")}
              onBlur={formik.handleBlur("stock")}
            />
            <div className="text-red-700">
              {formik.touched.stock && formik.errors.stock}
            </div>
          </div>
        </div>

        <div className="flex w-full items-center justify-between gap-1 pt-14">
          <div className="w-1/3 flex flex-col space-y-1">
            <label
              htmlFor="product-title"
              className="text-sm font-semibold text-gray-500"
            >
              Select Size
            </label>
            <Select
              id="product-category"
              name="category_id"
              mode="multiple"
              placeholder="Select Size"
              onChange={(value) => {
                setSelectedSizes(value);
              }}
            >
              {sizeOptions?.map((item, index) => (
                <Option value={item}>{item}</Option>
              ))}
            </Select>
          </div>
          <div className="w-1/3 flex flex-col space-y-1">
            <label
              htmlFor="product-title"
              className="text-sm font-semibold text-gray-500"
            >
              Select Colors
            </label>
            <div className="flex items-center ">
              <ColorPicker
                defaultValue="#1677ff"
                format="hex"
                onChangeComplete={(value) => {
                  addColors(value.toHexString());
                }}
              />
              {colors?.map((item, index) => {
                return (
                  <div
                    key={index}
                    className="h-6 w-6 m-1 rounded-full"
                    style={{ backgroundColor: `${item}` }}
                    onClick={() => {
                      removeColors(index);
                    }}
                  ></div>
                );
              })}
            </div>
          </div>
          <div className="w-1/3  flex flex-col space-y-1">
            <label
              htmlFor="product-title"
              className="text-sm font-semibold text-gray-500"
            >
              Select Tag || Tag Color || Active or Not
            </label>
            <div className="flex justify-between">
              <Select
                id="product-category"
                name="category_id"
                placeholder="Select Tags"
                onChange={(value) => {
                  setTag(value);
                }}
              >
                <Option value="Popular">Popular</Option>
                <Option value="Featured">Featured</Option>
                <Option value="Special">Special</Option>
              </Select>
              <ColorPicker
                defaultValue="#1677ff"
                size="small"
                showText
                onChange={(value) => {
                  setSelectedTagColor(value?.toHexString());
                }}
              />
              <Switch defaultChecked />{" "}
            </div>
          </div>
        </div>

        <div className="mt-2 w-full">
          <label
            htmlFor="product-image"
            className="text-sm font-semibold text-gray-500"
          >
            Product Image
          </label>
          <div
            {...getRootProps({ className: "dropzone" })}
            className="px-4 py-2 border border-gray-500 h-24 flex items-center justify-center w-full outline-none rounded"
          >
            <input {...getInputProps()} />
            <p>Drag & drop an image here, or click to select one</p>
          </div>

          {uploadedImgUrl && (
            <>
              <div className="relative mt-2 inline-block rounded-lg">
                <Image width={200} src={uploadedImgUrl} className="rounde-lg" />
                <div className="absolute top-0 right-0">
                  <MdDelete
                    color="red"
                    size={20}
                    className="cursor-pointer"
                    onClick={async (public_id) => {
                      // handleImageDelete(public_id);
                      await dispatch(deleteImgFromCloudinary(public_id)).then(
                        () => {
                          setUploadedImgUrl(null);
                          setCloudImagePublicId(null);
                        }
                      );
                    }}
                  />
                </div>
              </div>
            </>
          )}
        </div>
        <div className="w-full flex items-center justify-center">
          <button
            type="submit"
            className="bg-gray-950 mt-2 w-1/3 font-bold text-lg p-2 rounded-lg text-white"
          >
            ADD Product
          </button>
        </div>
      </form>
    </div>
  );
};

export default SellerAddProduct;
