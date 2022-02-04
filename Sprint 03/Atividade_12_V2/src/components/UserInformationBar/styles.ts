import styled from "styled-components";
import { Person } from "styled-icons/bootstrap";

export const Container = styled.div`
  grid-area: AD;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  align-items: center;

  background: var(--default-menu-bar-background);
  color: var(--default-menu-bar-icon01);
  border-bottom: 1px solid var(--default-menu-bar-border);

  padding: 0px 40px;
  font-size: 14px;
`;

export const UserIcon = styled(Person)`
  width: 30px;
  color: var(--default-menu-bar-icon01);
  margin-right: 12px;
`;

export const UserInfo = styled.div``;
