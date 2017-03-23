*** Settings ***
Documentation   Simple test for testing footer menu
...             All variables in _resource.robot
Resource   _resource.robot
Test Setup   Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Test links in footer
    #Click link in 1 column inside footer
    Wait Until Element Is Visible   css=.footer
    Click Link   link=Отзывы
    Wait Until Element Is Visible   css=.comments
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.slider       timeout=10.0
    Wait Until Element Is Visible   css=.footer
    Click Link   link=Новости
    Wait Until Element Is Visible   css=.post
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=Оплата и доставка
    Wait Until Element Is Visible   css=.static-content
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=Гарантия и возврат
    Wait Until Element Is Visible   css=.static-content
    Click Link   link=Главная
    #Click link for shop-store
    Click Link   link=Магазины
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=Контакты
    Wait Until Element Is Visible   css=.static-content
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=Карта сайта
    Wait Until Element Is Visible   css=.sitemap
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=г.Киев
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=г.Кременчуг
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=г.Полтава
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=г.Чернигов
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=г.Черкассы
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    Wait Until Element Is Visible   css=.footer
    Click Link   link=г.Хмельницкий
    Wait Until Element Is Visible   css=.shops-page
    Click Link   link=Главная
    #Click link for payment info for clients
    Wait Until Element Is Visible   css=.footer
    Click Element   css=.footer .payment-methods
    Wait Until Element Is Visible   css=.pay
    Click Element   css=.header .prego
Test facebook link inside iframe
    Wait Until Element Is Visible   css=.facebook-page-widget
    Select frame   xpath=/html/body/div[2]/div[6]/div[1]/div/div/div[4]/iframe
    Click Link   link=PREGO
    Close Window
*** Keywords ***
Provided precondition
    Setup system under test