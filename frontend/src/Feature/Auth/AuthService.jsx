import axios from "axios";
import { base_url, getConfig } from "@/utils/AxiosConfig";

//get object of headers for token authorization from utils file
const config = getConfig();

//login user service
const loginUser = async (data) => {
  // console.log(data);
  const response = await axios.post(`${base_url}/auth/login`, data);

  const token = response.data?.token;
  if (token) {
    localStorage.setItem("token", token);
  }

  if (response.data) return response.data;
};

//register user service
const registerUser = async (data) => {
  console.log(data);
  const response = await axios.post(`${base_url}/auth/register`, data);
  if (response.data) return response.data;
};

//send Mail service
const sendMail = async (data) => {
  const response = await axios.post(`${base_url}/auth/forgot`, data);
  if (response.data) return response.data;
};

//update password
const updateUserPassword = async (data) => {
  console.log(data?.token);

  const response = await axios.patch(
    `${base_url}/auth/reset/:${data?.token}`,
    data
  );
  if (response.data) return response.data;
};

export const authService = {
  loginUser,
  registerUser,
  sendMail,
  updateUserPassword,
};
