import React, { useEffect, useState } from "react";
import { loadUser } from "../Store/Access";

import { Container, UserIcon, UserInfo } from "./styles";

const UserInformationBar: React.FC = () => {
  const [userLocal, setUserLocal] = useState("");

  useEffect(() => {
    let user = loadUser();
    setUserLocal(user ? user : "Sem Usuário");
  }, []);

  return (
    <Container>
      <UserIcon />
      <UserInfo>{userLocal}</UserInfo>
    </Container>
  );
};

export default UserInformationBar;
