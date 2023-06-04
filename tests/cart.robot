*** Settings ***
Resource    page_objects/cart_page.robot
Resource    page_objects/pdp_page.robot
Resource    resources/cookies.robot
Resource    resources/data.robot
Resource    resources/settings.robot
Resource    ../page_objects/pdp_page.robot
Test Setup     Start Browser
Test Teardown  Close And Capture
Library    SeleniumLibrary

*** Variables ***
${URL}  ${BASE_URL}/index.php?rt=product/product&product_id=52&key=52

*** Test Cases ***
User can add a product to the cart
    Login As   ${URL}
    Add Product To Cart
    ${PRODUCT}  Get Product  Benefit Bella Bamba
    Product Is Present In Cart  ${PRODUCT}
