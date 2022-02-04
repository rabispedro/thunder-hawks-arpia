import React from "react";
import { useNavigate } from "react-router-dom";

import {
  Container,
  ListArea,
  Title,
  ListItem,
  ItemDetail,
  Avatar,
  ButtonsArea,
  CreateUserButton,
} from "./styles";

const ListPage: React.FC = () => {
  const navigate = useNavigate();
  const url = "https://avatars.githubusercontent.com/u/97741540";
  const url2 = "https://avatars.githubusercontent.com/u/42853022?v=4";
  const url3 = "https://avatars.githubusercontent.com/u/82842303?v=4";

  return (
    <Container>
      <span>
        <Title>Lista de usuários</Title>

        <ListArea>
          <ListItem>
            <Avatar src={url} />
            <ItemDetail>
              <strong>Fernando de Matos Simões</strong>
              <span>fernando@arpiatecnologia.com.br</span>
            </ItemDetail>
          </ListItem>
          <ListItem>
            <Avatar src={url2} />
            <ItemDetail>
              <strong>Pedro Rabis</strong>
              <span>rabispedro@arpiatecnologia.com.br</span>
            </ItemDetail>
          </ListItem>
          <ListItem>
            <Avatar src={url3} />
            <ItemDetail>
              <strong>Joao Lima</strong>
              <span>jlima@arpiatecnologia.com.br</span>
            </ItemDetail>
          </ListItem>
        </ListArea>
      </span>
      <ButtonsArea>
        <CreateUserButton
          type="button"
          value="Cadastrar Novo Usuário"
          onClick={() => {
            navigate("/user");
          }}
        />
      </ButtonsArea>
    </Container>
  );
};

export default ListPage;
