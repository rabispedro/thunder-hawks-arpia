import React, { useEffect, useState } from "react";
import { Api } from "../../Api";
import {
  ButtonsArea,
  CancelButton,
  CreateButton,
  DeleteButton,
  DoubleInput,
  DoubleInputArea,
  DoubleInputItem,
  EditUserArea,
  FormArea,
  InputForm,
  LabelForm,
  Title,
} from "./styles";

import {
  Container,
  AvatarArea,
  ImageAvatar,
  EditIcon,
  UserDetails,
  IconArea,
} from "./styles";

import imgDefaultNoUser from "../../assets/no-user.png";
import { useNavigate, useParams } from "react-router-dom";
import Modal from "../../components/default/Modal";
import ModalContent from "../../components/default/Modal/ModalContent";

const UserPage: React.FC = () => {
  var { id } = useParams<{ id: string }>();
  let navigate = useNavigate();

  const [modalOpen, setModalOpen] = useState(false);

  const [editId, setEditId] = useState<number>(0);
  const [userFinded, setUserFinded] = useState<any>({});
  const [editAvatar, setEditAvatar] = useState<boolean>(false);

  const [inputName, setInputName] = useState<string>("");
  const [inputLastName, setInputLastName] = useState<string>("");
  const [inputBirthday, setInputBirthday] = useState<string>("");
  const [inputUrlAvatar, setInputUrlAvatar] = useState<string>("");

  useEffect(() => {
    let newIdEdit: number = +(id ? id : "0");
    if (newIdEdit > 0) {
      setEditId(newIdEdit);
    }
  }, [id]);

  useEffect(() => {
    if (editId > 0) {
      searchUser();
    }
  }, [editId]);

  const searchUser = async () => {
    let url = "/users/" + editId;

    await Api.get(url)
      .then((response: any) => {
        let data = response.data;
        setUserFinded(data);
        setInputName(data.nome);
        setInputLastName(data.sobrenome);
        setInputBirthday(data.dataNascimento);
        setInputUrlAvatar(data.photoUrl);
      })
      .catch((err: any) => {
        console.error("Thunder Hawks >", err);
      });
  };

  const saveUser = async () => {
    let url = "/users/" + editId;

    var data = JSON.stringify({
      nome: inputName,
      sobrenome: inputLastName,
      dataNascimento: inputBirthday,
      photoUrl: inputUrlAvatar,
    });

    await Api.patch(url, data)
      .then((response: any) => {
        let data = response.data;
        setUserFinded(data);
        setInputName(data.nome);
        setInputLastName(data.sobrenome);
        setInputBirthday(data.dataNascimento);
        setInputUrlAvatar(data.photoUrl);

        navigate("/list");
      })
      .catch((err: any) => {
        console.error("Thunder Hawks >", err);
      });
  };

  const createUser = async () => {
    let url = "/users/";

    var data = JSON.stringify({
      nome: inputName,
      sobrenome: inputLastName,
      dataNascimento: inputBirthday,
      photoUrl: inputUrlAvatar,
    });

    await Api.post(url, data)
      .then((response: any) => {
        let data = response.data;
        setUserFinded(data);
        setInputName(data.nome);
        setInputLastName(data.sobrenome);
        setInputBirthday(data.dataNascimento);
        setInputUrlAvatar(data.photoUrl);

        navigate("/list");
      })
      .catch((err: any) => {
        console.error("Thunder Hawks >", err);
      });
  };

  const deleteUser = async (idDelete: number) => {
    let url = "/users/" + idDelete;

    await Api.delete(url)
      .then(() => {
        navigate("/list");
      })
      .catch((err: any) => {
        console.error("Thunder Hawks >", err);
      });
  };

  const FormatDateOnly = (value: string) => {
    return value?.replace(/^(\d{2})(\d{2})(\d{4})/, "$1-$2-$3");
  };

  function addZero(value: number) {
    return value <= 9 ? "0" + value : value;
  }

  return (
    <Container>
      <Modal modalOpen={modalOpen}>
        <ModalContent
          setModalOppen={setModalOpen}
          currentId={editId}
          currentName={userFinded?.nome + " " + userFinded.sobrenome}
        />
      </Modal>

      <AvatarArea className={editId === 0 ? "" : "DontShowIt"}>
        <ImageAvatar src={imgDefaultNoUser} />
      </AvatarArea>
      <AvatarArea className={editId > 0 ? "" : "DontShowIt"}>
        <ImageAvatar
          src={userFinded.photoUrl ? userFinded.photoUrl : imgDefaultNoUser}
        />
        <IconArea
          onClick={() => {
            setEditAvatar(!editAvatar);
          }}
        >
          <EditIcon />
        </IconArea>

        <InputForm
          className={editAvatar ? "" : "DontShowIt"}
          name="inputUrlAvatar2"
          value={inputUrlAvatar}
          onInput={(e: any) => setInputUrlAvatar(e.target.value)}
        ></InputForm>

        <UserDetails>
          <strong>
            {userFinded?.nome} {userFinded?.sobrenome}
          </strong>
          <span>{userFinded?.dataNascimento}</span>
        </UserDetails>
      </AvatarArea>

      <EditUserArea>
        <FormArea autoComplete="off">
          <Title>{editId > 0 ? "Editar Usuário" : "Novo Usuário"}</Title>

          <LabelForm>Nome</LabelForm>
          <InputForm
            name="inputName"
            value={inputName}
            onInput={(e: any) => setInputName(e.target.value)}
            placeholder="Informe seu Nome"
            title="Informe seu Nome"
          ></InputForm>
          <LabelForm>Sobrenome</LabelForm>
          <InputForm
            name="inputLastName"
            value={inputLastName}
            onInput={(e: any) => setInputLastName(e.target.value)}
            placeholder="Informe seu Sobrenome"
            title="Informe seu Sobrenome"
          ></InputForm>
          <DoubleInputArea>
            <DoubleInput>
              <LabelForm>Nascimento</LabelForm>
              <DoubleInputItem
                name="inputBirthday"
                value={inputBirthday}
                onInput={(e: any) => setInputBirthday(e.target.value)}
                placeholder="Informe sua Data de Nascimento (dd-MM-yyyy)"
                title="Informe sua Data de Nascimento (dd-MM-yyyy)"
                onBlur={() => {
                  setInputBirthday(FormatDateOnly(inputBirthday));
                }}
              />
            </DoubleInput>
            <DoubleInput className={editId > 0 ? "DontShowIt" : ""}>
              <LabelForm>URL do seu Avatar</LabelForm>
              <DoubleInputItem
                name="inputUrlAvatar"
                value={inputUrlAvatar}
                onInput={(e: any) => setInputUrlAvatar(e.target.value)}
                placeholder="Informe a URL do seu Avatar"
                title="Informe a URL do seu Avatar"
              />
            </DoubleInput>
          </DoubleInputArea>
        </FormArea>

        <ButtonsArea className={editId > 0 ? "" : "DontShowIt"}>
          <CreateButton
            type="button"
            value="Salvar Usuário"
            onClick={() => {
              saveUser();
            }}
          />
          <DeleteButton
            type="button"
            value="Excluir Usuário"
            onClick={() => {
              setModalOpen(true);
            }}
          />
          <CancelButton
            type="button"
            value="Cancelar"
            onClick={() => {
              navigate("/list");
            }}
          />
        </ButtonsArea>

        <ButtonsArea className={editId > 0 ? "DontShowIt" : ""}>
          <CreateButton
            type="button"
            value="Criar Novo Usuário"
            onClick={() => {
              createUser();
            }}
          />
          <CancelButton
            type="button"
            value="Cancelar"
            onClick={() => {
              navigate("/list");
            }}
          />
        </ButtonsArea>
      </EditUserArea>
    </Container>
  );
};

export default UserPage;
