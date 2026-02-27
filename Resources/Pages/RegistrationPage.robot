*** Settings ***
Resource    BasePage.robot
Resource    ../Locators/registration_locators.robot


*** Keywords ***

Open Signup Page
    Click Element With Log    ${SIGNIN_TAB}    signup/login tab
    

Start New User Registration
    [Arguments]    ${username}    ${email}
    Input Text With Log    ${USERNAME_INPUT}    ${username}    username input
    Input Text With Log    ${EMAIL_INPUT}       ${email}       email input
    Click Element With Log    ${SIGN_UP_BUTTON}    signup button

Fill Account Information
    [Arguments]    ${password}    ${day}    ${month}    ${year}
    Element Should Be Visible    ${ACCOUNT_CREATE_MESSAGE_TEXT}    account information text
    Click Element    ${MR_TITLE_BUTTON}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Select From List By Value    ${DAY_DROPDOWN}    ${day}
    Select From List By Value    ${MONTH_DROPDOWN}  ${month}
    Select From List By Value    ${YEAR_DROPDOWN}   ${year}
    Click Element    ${NEWSLETTER_CHECKBOX}
    Click Element    ${SPECIAL_OFFER_CHECKBOX}

Fill Address Information
    [Arguments]    ${first}    ${last}    ${company}    ${address1}    ${state}    ${city}    ${zipcode}    ${mobile}
    Input Text    ${FIRST_NAME_INPUT}    ${first}
    Input Text    ${LAST_NAME_INPUT}     ${last}
    Input Text    ${COMPANY_INPUT}       ${company}
    Input Text    ${ADDRESS_1_INPUT}     ${address1}
    Select From List By Label    ${COUNTRY_DROPDOWN}    India
    Input Text    ${STATE_INPUT}         ${state}
    Input Text    ${CITY_INPUT}          ${city}
    Input Text    ${ZIPCODE_INPUT}       ${zipcode}
    Input Text    ${MOBILE_NUMBER_INPUT}     ${mobile}
    Click Element    ${CREATE_ACCOUNT_BUTTON}

Verify Account Created
    Element Should Be Visible    ${SUCCESS_CREATE_MESSAGE}    account created message
    Click Element    ${CONTINUE_BUTTON}

Logout User
    Click Element    ${LOGOUT_TAB}
