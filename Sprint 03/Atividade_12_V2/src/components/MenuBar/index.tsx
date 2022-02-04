import React from "react";
import { useNavigate } from "react-router-dom";
import { deleteUser } from "../Store/Access";

import { Container, UserIcon, ExitIcon, ListIcon } from "./styles";

const MenuBar: React.FC = () => {
  let navigate = useNavigate();
  const logoutExecute = () => {
    deleteUser();
    navigate("/login");
  };

  return (
    <Container>
      <UserIcon />
      <ListIcon />
      <ExitIcon
        onClick={() => {
          logoutExecute();
        }}
      />
    </Container>
  );
};

export default MenuBar;
