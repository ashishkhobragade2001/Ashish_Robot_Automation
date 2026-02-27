*** Settings ***
Resource    BasePage.robot
Resource    ../Locators/login_locators.robot

*** Keywords ***

Login With Credentials
    [Arguments]    ${email}    ${password}
    Click Element With Log    ${LOGIN_BUTTON}    login button
    Input Text With Log       ${EMAIL_INPUT}     ${email}    email input
    Input Text With Log       ${PASSWORD_INPUT}  ${password}    password input
    Click Element With Log    ${SUBMIT_BUTTON}   submit button

Verify Login Successful
    Element Should Be Visible    ${LOGIN_VRF_TEXT}    login verification text
