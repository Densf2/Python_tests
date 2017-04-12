*** Settings ***
Documentation   Negative test checkout on prego.ua
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Enter as logged user and search product
    Click Element   css=.authorization .login   #click link for open login from
    Wait Until Element Is Visible   id=loginForm
    Input Text   id=eMailOrPhone   ${VALID_USER}    #enter user name
    Input Password   id=password   ${VALID PASSWORD}    #enter user password
    Click Button   Войти
    Wait Until Element Is Visible    css=.slider
    Input Text    id=search    Кеды     #enter sesarch word
    Sleep   2s
    Press Key    id=search    \\13      #press enter
    Mouse Down   id=articleIndex3
    Click Element   id=articleIndex3    #click product link on search page
    Wait Until Element Is Visible   css=.magnifying-glass   #wait until show product photo
    Sleep   2s
    Input Text    id=search    Кеды     #enter word to the search input
    Sleep   2s
    Press Key    id=search    \\13      #press ENTER
    Mouse Down   id=articleIndex9
    Click Element   id=articleIndex9    #click product link
    Wait Until Element Is Visible   css=.magnifying-glass
    Sleep   2s
    Input Text   id=search    Сумка     #enter search word
    Sleep   2s
    Press Key   id=search    \\13       #press ENTER
    Wait Until Element Is Visible   css=.content
    Mouse Down   id=articleIndex5
    Click Element   id=articleIndex5    #click product link in the search list
    Wait Until Element Is Visible   css=.magnifying-glass
    Click Element   xpath=/html/body/div[2]/div[5]/div[2]/div[1]/div[2]/div[2]/div[2]/div[2]/a[1]   #Click another color bag
    Wait Until Element Is Visible   css=.magnifying-glass
    Sleep   2s
    Input Text   id=search   Ботинки
    Press Key   id=search    \\13
    Wait Until Element Is Visible   css=.content
    Mouse Down   id=articleIndex17    #click product link in search list by word - ботинки
    Click Element   id=articleIndex17
    Wait Until Element Is Visible   css=.magnifying-glass   #wait until image view
    Sleep   2s
    Input Text   id=search   Сандали
    Press Key   id=search    \\13
    Wait Until Element Is Visible   css=.content
    Mouse Down   id=articleIndex9
    Click Element   id=articleIndex9
    Wait Until Element Is Visible   css=.magnifying-glass   #wait until product image view
    Click Element   xpath=/html/body/div[2]/div[3]/div[2]/a[1]  #click logo of the website - go to main page
    Wait Until Element Is Visible   css=.slider
    Sleep   2s
*** Keywords ***
Provided precondition
    Setup system under test
