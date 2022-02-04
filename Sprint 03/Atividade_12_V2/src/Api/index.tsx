import axios from "axios";

const URL_API_BACKEND = "http://localhost:8080/";

export const Api = axios.create({
  baseURL: URL_API_BACKEND,
  headers: { "Content-Type": "application/json" },
});
