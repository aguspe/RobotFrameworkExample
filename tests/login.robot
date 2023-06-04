*** Settings ***
Resource    page_objects/login_page.robot
Resource    resources/settings.robot
Test Setup     Start Browser  ${URL}
Test Teardown  Close And Capture

*** Variables ***
${USERNAME}    aguspe
${PASSWORD}    12341234
${URL}  ${BASE_URL}/index.php?rt=account/login

*** Test Cases ***
Login with correct Username and Password
    Login    ${USERNAME}    ${PASSWORD}
    Header Contains   Welcome back Agustin

Login with incorrect Username and Password
    Login    ${USERNAME}    wrongPassword
    Warning Contains  Error: Incorrect login or password provided.