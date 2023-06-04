*** Settings ***
Resource    page_objects/cart_page.robot
Resource    page_objects/pdp_page.robot
Resource    resources/cookies.robot
Resource    resources/data.robot
Resource    resources/settings.robot
Test Setup     Start Browser
Test Teardown  Close And Capture

*** Test Cases ***
User can add a product to the cart
    ${PRODUCT}  Get Product  Benefit Bella Bamba
    Login As   ${BASE_URL}/index.php?rt=product/product&product_id=${PRODUCT}&key=${PRODUCT}
    Add Product To Cart
    Product Is Present In Cart  ${PRODUCT}
