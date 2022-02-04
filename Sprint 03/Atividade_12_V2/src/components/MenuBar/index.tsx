import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { useLocation, useNavigate } from "react-router-dom";
import { deleteUser } from "../Store/Access";

import { Container, UserIcon, ExitIcon, ListIcon } from "./styles";

export interface Props {
  currentSelectedPath: string;
}

const MenuBar: React.FC = () => {
  const [selectedPath, setSelectedPath] = useState("");
  let navigate = useNavigate();

  const currentPath = useLocation().pathname;

  useEffect(() => {
    setSelectedPath(currentPath);
  }, [currentPath]);

  const logoutExecute = () => {
    deleteUser();
    navigate("/login");
  };

  return (
    <Container>
      <Link to="/user">
        <UserIcon currentSelectedPath={selectedPath} />
      </Link>
      <Link to="/list">
        <ListIcon currentSelectedPath={selectedPath} />
      </Link>
      <Link to="/#">
        <ExitIcon
          onClick={() => {
            logoutExecute();
          }}
          currentSelectedPath={selectedPath}
        />
      </Link>
    </Container>
  );
};

export default MenuBar;
