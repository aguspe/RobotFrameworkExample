*** Variables ***
${HEADER}   class:menu_text
${WARNING}   //*[@id="maincontainer"]/div/div/div/div[1]

*** Keywords ***
Login
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text    id:loginFrm_loginname     ${USERNAME}
    Input Text    id: loginFrm_password     ${PASSWORD}
    Click Element  xpath://*[@id="loginFrm"]/fieldset/button

Header Contains
    [Arguments]    ${TEXT}
    Element Should Contain   ${HEADER}  ${TEXT}

Warning Contains
    [Arguments]    ${TEXT}
    Element Should Contain   ${WARNING}  ${TEXT}