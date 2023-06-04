*** Keywords ***

Product Is Present In Cart
    [Arguments]    ${PRODUCT}
    Page Should Contain Element   xpath=//a[@href='${BASE_URL}/index.php?rt=product/product&product_id=${PRODUCT}&key=${PRODUCT}']

