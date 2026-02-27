*** Settings ***
Resource    ../../Resources/Pages/BasePage.robot
Resource    ../../Resources/Pages/LoginPage.robot

*** Test Cases ***

Valid Login Test
    Open Browser    https://automationexercise.com    chrome
    Maximize Browser Window
    Login With Credentials    test@example.com    test123
    Verify Login Successful
    Close Browser
