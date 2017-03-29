*** Settings ***
Documentation   Test for shopping cart on website
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Testing cart on website
    Wait Until Element Is Visible   css=.prego-item     #Enter as unlogged user
    Click Link   xpath=/html/body/div[2]/div[4]/div/div[1]/div/a    #Click cart as unlogged user
    Wait Until Element Is Visible   id=cartForm
    Sleep   2s
    Click Element   css=.continue-shopping      #Close cart
    Wait Until Element Is Visible   css=.prego-item     #return to main page
    Click Element   xpath=/html/body/div[2]/div[1]/div/div[1]/a[1]      #Open sign in form
    Wait Until Element Is Visible   id=loginForm
    Sleep   2s
    Input Text   id=eMailOrPhone    ${VALID USER}   #Enter valid login
    Input Password   id=password    ${VALID PASSWORD}   #Eneter valid password
    Sleep   2s
    Click Button   Войти
    Wait Until Element Is Visible   css=.box .authorization .logout  #On main page show name user and EXIT
    Click Link   xpath=/html/body/div[2]/div[4]/div/div[1]/div/a    #Click cart as logged user
    Wait Until Element Is Visible   id=cartForm
    Click Element   css=.continue-shopping      #Close cart
    Wait Until Element Is Visible   css=.prego-item     #return to main page
    Click Element   xpath=/html/body/div[2]/div[1]/div/div[1]/a[2]      #Click exit for logged user
    Wait Until Element Is Visible   css=.prego-item     #return to main page
    Sleep   2s
*** Keywords ***
Provided precondition
    Setup system under test
