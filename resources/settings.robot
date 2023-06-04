*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BASE_URL}  https://automationteststore.com
${BROWSER}  chrome

*** Keywords ***
Start Browser
    [Arguments]    ${URL}=${NONE}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close And Capture
    Clear All Screenshots
    Capture Page Screenshot
    Close Browser

Clear All Screenshots
    Remove Files    log/*.png
