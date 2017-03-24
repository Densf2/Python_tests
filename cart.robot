*** Settings ***
Documentation   Simple test for ui_testing header menu
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Add goods to cart
    Wait Until Element Is Enabled   id=search
    Input Text    id=search    Повс
    Sleep   2s
    Press Key    id=search    \\13
    Wait Until Element Is Visible   css=.content
    Mouse Down   id=articleIndex0  #hover product link
    Click Element   css=.cart-buy  #Ckick BUY
    Wait Until Element Is Visible   id=cartForm     timeout=2s
    Mouse Down   css=.cart-form
    Click Element   css=.cart-form .close  #close cart
    Wait Until Element Is Visible   css=.content
    Mouse Down   id=articleIndex3  #hover product link
    Sleep   2s
    Click Element   xpath=//*[@id="articleIndex3"]/div/div[4]/div[2]/div[1]/div   #add product to cart
    Wait Until Element Is Visible   id=cartForm   #show shopping cart
    Sleep   2s
    Click Element   xpath=//*[@id="positions"]/div[3]/div[1]    #delete product 2
    Sleep   2s
    Click Element   xpath=//*[@id="cartForm"]/div[4]/div[2]/div[2]/button       #click button for confirm order
    Input Text   id=bonusOrDiscountCardNo   9696960101
    Sleep   2s
    Input Text   id=phone    0680355425         #adding info to inputs
    Sleep   2s
    Input Text   id=eMail    mail@mail.ua
    Sleep   2s
    Input Text   id=firstName   Den
    Sleep   2s
    Input Text   id=lastName    Pavlyuk
    Sleep   2s
    Select Radio Button   deliveryMethod    courier
    Sleep   2s
    Input Text   id=addressCity     Khmelnitskiy city
    Sleep   2s
    Input Text   id=address    1010 Zarichanska
    Sleep   2s
    Click Link   link=Главная
    Sleep   2s
*** Keywords ***
Provided precondition
    Setup system under test
