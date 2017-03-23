*** Settings ***
Documentation   Simple test for testing header menu
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Click all eltments on header
    Wait Until Page Contains Element   css=.box
    Click Link   ${LOGIN}
    Wait Until Page Contains Element   id=loginForm
    Click Element   id=eMailOrPhone
    Click Element   css=.close
    Page Should Not Contain   css=.modal
    Wait Until Element Is Visible   css=.slider     timeout=10.0
    Click Link   css=.box .authorization .register
    Wait Until Element Is Visible   id=registrationForm    timeout=10 seconds
    Click Element   css=.close
    Page Should Not Contain   css=.modal
    Wait Until Element Is Visible   css=.slider .slide
    Wait Until Page Contains Element   css=.box
    Click Element   css=.user-menu .box .my-prego
    Wait Until Element Is Visible   id=loginForm
    Click Element   css=.close
    Wait Until Page Does Not Contain Element   css=.modal
    Wait Until Element Is Visible   css=.slider
    Click Element   css=div.my-bonuses
    Wait Until Element Is Visible   id=loginForm
    Click Element   css=.close
    Wait Until Page Does Not Contain Element   css=.modal
    Wait Until Element Is Visible   css=.slider    timeout=10.0
    Wait Until Page Contains Element   css=.box
    Click Element   css=div.my-orders
    Wait Until Element Is Visible   id=loginForm
    Click Element   css=.close
    Wait Until Element Is Visible   css=.slider    timeout=10.0
    Click Element   css=div.my-favorites
    Wait Until Element Is Visible   id=loginForm
    Click Element   css=.close
    Wait Until Element Is Visible   css=.slider    timeout=10.0
    Wait Until Page Does Not Contain Element   css=.modal
    Click Element   css=div.my-reviews
    Wait Until Element Is Visible   id=loginForm
    Click Element   css=.close
    Wait Until Element Is Visible   css=.slider    timeout=10.0
    Click Element   css=.header .prego
    Wait Until Element Is Visible   css=.slider     timeout=10.0
    Click Link   link=callback
    Wait Until Element Is Visible   id=callbackForm
    Click Element   id=name
    Click Element   css=.close
    Wait Until Page Does Not Contain Element   css=.modal
    Wait Until Element Is Visible   css=.slider
    Click Element   css=.languages .language
    Wait Until Element Is Visible   css=.slider
*** Keywords ***
Provided precondition
    Setup system under test