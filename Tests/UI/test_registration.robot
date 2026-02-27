*** Settings ***
Resource    ../../Resources/Pages/BasePage.robot
Resource    ../../Resources/Pages/RegistrationPage.robot
Library     SeleniumLibrary

Suite Setup     Open Browser To Application
Suite Teardown  Close Browser

*** Variables ***
${URL}          https://automationexercise.com
${BROWSER}      chrome
${USERNAME}     TestUser
${PASSWORD}     Test@123

*** Keywords ***

Open Browser To Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***

Valid User Registration Test
    ${random}=    Evaluate    random.randint(1000,9999)    modules=random
    ${email}=     Set Variable    testuser${random}@mail.com

    Open Signup Page
    Start New User Registration    ${USERNAME}    ${email}
    Fill Account Information       ${PASSWORD}    10    5    1995
    Fill Address Information       John    Doe    ABC Pvt Ltd    Delhi Street    Delhi    Delhi    110001    9999999999
    Verify Account Created
    Logout User

