*** Settings ***
Documentation   Simple test for ui_testing header menu
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Open login form and insert login and password
    Click Element   css=.authorization .login
    Wait Until Element Is Visible   id=loginForm
    Input Text   id=eMailOrPhone   ${VALID_USER}
    Input Password   id=password   ${VALID PASSWORD}
    Click Button   Войти
    Wait Until Element Is Visible    css=.slider
*** Keywords ***
Provided precondition
    Setup system under test