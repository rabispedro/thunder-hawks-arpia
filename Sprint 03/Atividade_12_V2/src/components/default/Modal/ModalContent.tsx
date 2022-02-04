import React from "react";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";
import { Api } from "../../../Api";

export const Content = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  border-radius: 12px;
  overflow: hidden;

  transition: ease-in-out 0.5s;

  width: 500px;
  background-color: #ffffff;
`;
export const ErrorMessage = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;

  color: var(--THEME_COLOR_001);
  font-size: 14px;

  margin-top: 20px;

  > strong {
    margin-top: 12px;
    color: var(--THEME_COLOR_007);
  }
`;

export const Title = styled.div`
  display: flex;
  justify-content: center;
  padding: 12px;

  background-color: var(--THEME_COLOR_001);
  color: var(--THEME_COLOR_006);
  width: 100%;
`;

export const GroupButton = styled.div`
  display: flex;
  justify-content: space-between;
  width: 75%;
  margin: 12px 0;
`;

export const YesButton = styled.input`
  display: flex;
  justify-content: center;
  width: 49%;

  background: var(--THEME_COLOR_002);
  color: var(--THEME_COLOR_006);
  cursor: pointer;

  padding: 12px 16px;
  margin-top: 24px;
  border-radius: 6px;

  transition: ease-in-out 0.5s;

  :hover {
    box-shadow: 0px 0px 12px rgba(255, 122, 39, 1);
  }
`;
export const NoButton = styled.input`
  display: flex;
  justify-content: center;
  width: 49%;

  background: var(--THEME_COLOR_004);
  color: var(--THEME_COLOR_001);
  cursor: pointer;

  padding: 12px 16px;
  margin-top: 24px;
  border-radius: 6px;

  transition: ease-in-out 0.5s;

  :hover {
    box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.4);
  }
`;

type Props = {
  setModalOppen: React.Dispatch<React.SetStateAction<boolean>>;
  currentId: number;
  currentName: string;
};

const Modal: React.FC<Props> = ({ setModalOppen, currentId, currentName }) => {
  let navigate = useNavigate();

  const deleteUser = async () => {
    let url = "/users/" + currentId;

    await Api.delete(url)
      .then(() => {
        navigate("/list");
      })
      .catch((err: any) => {
        console.error("Thunder Hawks >", err);
      });
  };

  return (
    <Content>
      <Title>Excluir Perfil</Title>
      <ErrorMessage className={currentId > 0 ? "" : "DontShowIt"}>
        <span>
          Você tem certeza que deseja <b>EXCLUIR</b> o perfil de:
        </span>
        <strong>{currentName}</strong>
      </ErrorMessage>
      <GroupButton>
        <YesButton type="button" onClick={() => deleteUser()} value="Sim" />
        <NoButton
          type="button"
          onClick={() => setModalOppen(false)}
          value="Não"
        />
      </GroupButton>
    </Content>
  );
};

export default Modal;
