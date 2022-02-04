import React from "react";
import styled from "styled-components";

import imgLoading from "../../assets/load.gif";

const LoadingArea = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  color: #ffffff;
  font-size: 12px;

  > img {
    width: 100px;
  }
`;

type Props = {
  setModalOppen: React.Dispatch<React.SetStateAction<boolean>>;
};

const LoadingContent: React.FC<Props> = ({ setModalOppen }) => {
  return (
    <LoadingArea>
      <img src={imgLoading} alt="Loading" />
      <strong>Meu Clube Care</strong>
      <i>Aguarde um instante...</i>
    </LoadingArea>
  );
};
export default LoadingContent;
