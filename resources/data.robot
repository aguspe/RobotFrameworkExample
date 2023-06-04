*** Settings ***
Library  JSONLibrary
Library    OperatingSystem
Library    Collections

*** Keywords ***
Get Product
    [Arguments]    ${NAME}
    ${PRODUCTS}  Load Json From File  data/products.json
    ${PRODUCT}   Get Value From Json  ${PRODUCTS}  $..products[?(@.name=="${NAME}")].id
    [return]  ${PRODUCT}[0]

Get User Cookie
    [Arguments]    ${USERNAME}
    ${USERS}  Load Json From File  data/users.json
    ${USER}   Get Value From Json  ${USERS}  $..users[?(@.username==${USERNAME})].cookie
    [return]  ${USER}[0]
