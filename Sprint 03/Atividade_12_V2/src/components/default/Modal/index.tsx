import React from "react";
import { createPortal } from "react-dom";
import { Wrappper } from "./styles";

type Props = {
  modalOpen: boolean;
};

const Modal: React.FC<Props> = ({ modalOpen, children }) => {
  if (!modalOpen) {
    return null;
  }

  return createPortal(
    <Wrappper>
      <div>{children}</div>
    </Wrappper>,
    document.body
  );
};

export default Modal;
