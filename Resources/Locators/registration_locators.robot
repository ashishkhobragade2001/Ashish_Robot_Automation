*** Variables ***

# ---- Sign In Webpage
${SIGNIN_TAB}                     xpath=//li[contains(., ' Signup / Login')]
${USERNAME_INPUT}                 xpath=//input[@data-qa='signup-name']
${EMAIL_INPUT}                    xpath=//input[@data-qa='signup-email']
${SIGN_UP_BUTTON}                 xpath=//button[@data-qa='signup-button']
${AK_LOCATOR}                     

# ---- Account Information
${VALIDATION_TEXT}                xpath=//b[text()='Enter Account Information']
${MR_TITLE_BUTTON}                id=id_gender1
${PASSWORD_INPUT}                 id=password
${DAY_DROPDOWN}                   id=days
${MONTH_DROPDOWN}                 id=months
${YEAR_DROPDOWN}                  id=years

# ---- Checkboxes
${NEWSLETTER_CHECKBOX}            id=newsletter
${SPECIAL_OFFER_CHECKBOX}         xpath=//input[@id='optin']

# ---- Address Information
${FIRST_NAME_INPUT}               id=first_name
${LAST_NAME_INPUT}                id=last_name
${COMPANY_INPUT}                  id=company
${ADDRESS_1_INPUT}                xpath=(//input[@type='text'])[6]
${ADDRESS_2_INPUT}                xpath=(//input[@type='text'])[7]
${ADDRESS_3_INPUT}                xpath=(//input[@type='text'])[8]

${COUNTRY_DROPDOWN}               id=country
${STATE_INPUT}                    id=state
${CITY_INPUT}                     id=city
${ZIPCODE_INPUT}                  id=zipcode
${MOBILE_NUMBER_INPUT}            id=mobile_number

${CREATE_ACCOUNT_BUTTON}          xpath=/html/body/section/div/div/div/div/form/button

# ---- Success Messages
${SUCCESS_CREATE_MESSAGE}         xpath=//b[text()='Account Created!']
${ACCOUNT_CREATE_MESSAGE_TEXT}    xpath=//b[contains(text(),'Enter Account Information')]
${CONTINUE_BUTTON}                xpath=//a[@class='btn btn-primary']
${LOGOUT_TAB}                     xpath=/html/body/header/div/div/div/div[2]/div/ul/li[4]/a
