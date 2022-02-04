import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { Api } from "../../Api";
import imgDefaultNoUser from "../../assets/no-user.png";

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
  const [userFinded, setUserFinded] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    searchUser();
  }, []);

  const searchUser = async () => {
    let url = "/users/";

    await Api.get(url)
      .then((response: any) => {
        let data = response.data;
        if (data.content) {
          let dataUser = data.content;
          setUserFinded(dataUser);
        }
      })
      .catch((err: any) => {
        console.error("Thunder Hawks >", err);
      });
  };
  return (
    <Container>
      <span>
        <Title>Lista de usuários - {userFinded.length}</Title>

        <ListArea>
          {userFinded?.map((data: any, id: number) => {
            return (
              <ListItem to={"/user/" + data.id} key={id}>
                <Avatar
                  src={data.photoUrl ? data.photoUrl : imgDefaultNoUser}
                />
                <ItemDetail>
                  <strong>
                    {data.nome} {data.sobrenome}
                  </strong>
                  <span>{data.dataNascimento}</span>
                </ItemDetail>
              </ListItem>
            );
          })}
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
