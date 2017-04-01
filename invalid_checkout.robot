*** Settings ***
Documentation   Negative test checkout on prego.ua
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Testing checkout on website
    Click Link   xpath=/html/body/div[2]/div[4]/div/div[2]/div[1]/div/a
    Wait Until Element Is Visible   css=.articles-page
    Sleep   2s
    Mouse Down   id=articleIndex0
    Click Element   css=.cart-buy
    Wait Until ELement Is Visible   id=cartForm
    Click Button   Оформить →
    Wait Until Element Is Visible   css=.content
    Input Text   name=bonusOrDiscountCardNo     1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
    Click Button   Подтвердить заказ    #Enter to field number and click CONFIRM button
    Wait Until Element Is Visible   css=.content
    Input Text   name=phone     0123145678
    Click Button   Подтвердить заказ    #Enter number to phone field and click button
    Wait Until Element Is Visible   css=.content
    Input Text   name=eMail     0000000000000
    Click Button   Подтвердить заказ    #Input for email recive number and without error
    Wait Until Element Is Visible   css=.content
    Input Text   name=firstName     1111111111111111/44
    Click Button   Подтвердить заказ    #Enter in name field numbers - show error
    Wait Until Element Is Visible   css=.content
    Input Text   name=lastName      789/25*88888
    Click Button   Подтвердить заказ    #Enter in field for LastName - number - without error
    Wait Until Element Is Visible   css=.content
    Select Radio Button   deliveryMethod    novaPoshtaPrepaid
    Wait Until Element Is Visible   css=.content
    Input Text   name=novaPoshtaDepartmentCity   1111111
    Click Button   Подтвердить заказ    #Enter invalid info to field - without error
    Wait Until Element Is Visible   css=.content
    Select Radio Button   deliveryMethod   novaPoshtaPostpaid
    Input Text   name=novaPoshtaDepartmentCity   1111111
    Input Text   name=novaPoshtaDepartment   111111111.2
    Click Button   Подтвердить заказ    #Enter invalid info to field - without error
    Select Radio Button   deliveryMethod   courier
    Input Text   name=addressCity   000.11/2$+125
    Input Text   name=address   4545/5-999+999*2=0
    Click Button   Подтвердить заказ
    Select Radio Button   deliveryMethod   pickup
    Mouse Down   id=shopId
    Click Element   xpath=//*[@id="shopId"]/option[2]
    Sleep   2s      #Click variant delivery to shop
    Click Button   Подтвердить заказ
    Input Text   name=note  QQQQQQQQQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
    Click Button   Подтвердить заказ    #Enter to textarea invalid infirmation - form working well
*** Keywords ***
Provided precondition
    Setup system under test
