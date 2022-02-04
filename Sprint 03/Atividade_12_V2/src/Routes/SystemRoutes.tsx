import React from "react";
import { Routes, Route } from "react-router-dom";
import ListPage from "../Pages/ListPage";
import LoginPage from "../Pages/LoginPage";
import UserPage from "../Pages/UserPage";

const Router: React.FC = () => {
  return (
    <Routes>
      <Route path="/login" element={<LoginPage />} />
      <Route path="/list" element={<ListPage />} />
      <Route path="/user" element={<UserPage />} />

      <Route path="/" element={<ListPage />} />
    </Routes>
  );
};

export default Router;
