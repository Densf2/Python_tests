*** Settings ***
Documentation           This test header and footer on page - prego.ua
Library                 Selenium2Library
*** Variables ***
${BROWSER}          Chrome
${SERVER}           http://prego.ua
${VALID USER}     0680355425
${VALID PASSWORD}    112test112
${TIMEOUT}          5 seconds
${LOGIN}   css=.box .authorization .login
${REGISTER}   css=.box .authorization .register
${MY_CABINET}   xpath=/html/body/div[2]/div[1]/div/div[2]
${BONUS}   xpath=/html/body/div[2]/div[1]/div/div[3]
${MY_ORDERS}   css=.box .my-orders
${FAUVORITE_PRODUCTS}   css=.box .my-favorites
${MY_RESPONSE}   css=.box .my-reviews
*** Keywords ***
Prepare Test Environment
    Open Browser    ${SERVER}       ${BROWSER}
    Maximize Browser Window
