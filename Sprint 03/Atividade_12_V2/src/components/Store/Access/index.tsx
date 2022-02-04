const THUNDER_HAWKS_USER = "THUNDER_HAWKS_USER";

export const loadUser = () => {
  try {
    const serializedData = localStorage.getItem(THUNDER_HAWKS_USER);

    if (serializedData === null) {
      return undefined;
    }

    return serializedData;
  } catch (e) {
    return undefined;
  }
};

export const saveUser = (dataUser: string) => {
  try {
    localStorage.setItem(THUNDER_HAWKS_USER, dataUser);
  } catch (e) {
    console.error("Sem Usuário logado");
  }
};

export const deleteUser = () => {
  try {
    localStorage.removeItem(THUNDER_HAWKS_USER);
  } catch (e) {
    console.error("Nao foi possivel remover o Usuário.");
  }
};

export const hasUserAuthenticated = () => {
  const serializedData = localStorage.getItem(THUNDER_HAWKS_USER);

  return serializedData !== null && serializedData.length > 0;
};
