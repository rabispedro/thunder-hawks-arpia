import { createGlobalStyle } from "styled-components";

export default createGlobalStyle`
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  html, body, #root {
    height: 100%;
    background: var(--background);
  }

  *, button, input {
    border: 0;
    outline: 0;
    font-family: 'Roboto', sans-serif;
  }
  
  a {
    text-decoration: none;
  }

  .DontShowIt {
    display: none !important;
  }
  
  :root {
    --THEME_COLOR_001: #4B5E71;
    --THEME_COLOR_002: #FF7A27;
    --THEME_COLOR_003: #BEC0CC;
    --THEME_COLOR_004: #E8E9ED;
    --THEME_COLOR_005: #F5F6FA;
    --THEME_COLOR_006: #FFFFFF;
    --THEME_COLOR_007: #2CD071;

    --background: var(--THEME_COLOR_005);
    --background-02: var(--THEME_COLOR_006);

    --system-title: var(--THEME_COLOR_007);

    --list-border-left-color: var(--THEME_COLOR_001);
    --list-border-left-color-hover: var(--THEME_COLOR_002);
    --list-border-left-color-background-hover: var(--THEME_COLOR_005);
    --list-area-button-border: var(--THEME_COLOR_004);
    --list-area-detail-strong-color: var(--THEME_COLOR_001);
    --list-area-detail-span-color: var(--THEME_COLOR_003);

    --Login-title-background: var(--THEME_COLOR_007);
    --Login-title-text: var(--THEME_COLOR_006);
    --Login-body: var(--THEME_COLOR_006);
    --Login-body-label-text: var(--THEME_COLOR_001);
    --Login-body-input-border: var(--THEME_COLOR_004);
    --Login-body-input-text: var(--THEME_COLOR_001);
    
    --Login-button-area-background: var(--THEME_COLOR_005);
    --Login-button-01-background: var(--THEME_COLOR_007);
    --Login-button-01-text: var(--THEME_COLOR_006);
    --Login-button-02-background: var(--THEME_COLOR_004);
    --Login-button-02-text: var(--THEME_COLOR_001);

    --user-area-edit-content-border: var(--THEME_COLOR_004);
    --user-area-edit-content-strong: var(--THEME_COLOR_001);
    --user-area-edit-content-span: var(--THEME_COLOR_007);
    --user-area-edit-button-background: var(--THEME_COLOR_005);
    --user-area-edit-button-border: var(--THEME_COLOR_006);
    --user-area-edit-button-color: var(--THEME_COLOR_007);

    --user-area-create-button-01-background: var(--THEME_COLOR_007);
    --user-area-create-button-01-text: var(--THEME_COLOR_006);
    --user-area-delete-button-01-background: var(--THEME_COLOR_002);
    --user-area-delete-button-01-text: var(--THEME_COLOR_006);
    --user-area-cancel-button-01-background: var(--THEME_COLOR_004);
    --user-area-cancel-button-01-text: var(--THEME_COLOR_001);

    --default-menu-bar-background: var(--THEME_COLOR_006);
    --default-menu-bar-border: var(--THEME_COLOR_004);
    --default-menu-bar-icon01: var(--THEME_COLOR_001);
    --default-menu-bar-icon02: var(--THEME_COLOR_003);
    --default-menu-bar-text01: var(--THEME_COLOR_001);
  }
`;
