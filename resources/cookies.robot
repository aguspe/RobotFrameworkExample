*** Settings ***
Resource    resources/data.robot

*** Keywords ***
Login As
    [Arguments]    ${URL}

    Go To  ${URL}
    ${COOKIE}  Get User Cookie  aguspe
    Add Cookie  customer  ${COOKIE}
    Go To  ${URL}