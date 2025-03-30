*** Settings ***
Library     SeleniumLibrary
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml

*** Keywords ***
Open Browser and open website
    Open Browser ${baseUrl}     gc

Click register button on login page
    SeleniumLibrary.Wait until Element Is Visible   xpath=//h6[text()="คลิกเพื่อสมัครสมาชิก"]
    Click Element   xpath=//h6[text()="คลิกเพื่อสมัครสมาชิก"]

Input form data from register screen
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="email"]
    Input text      xpath=//input[@name="email"]      ${Email}
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="firstName"]
    Input text      xpath=//input[@name="firstName"]    ${firstName}
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="lastName"]
    Input text      xpath=//input[@name="lastName"]    ${lastName}
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="phoneNumber"]
    Input text      xpath=//input[@name="phoneNumber"]    ${PhoneNumber}
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="newPassword"]
    Input text      xpath=//input[@name="newPassword"]    ${Password}
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="confirmPassword"]
    Input text      xpath=//input[@name="confirmPassword"]    ${ConfirmPassword}  
    SeleniumLibrary.Wait until Element Is Visible   xpath=//input[@name="consent" and @type="checkbox"]
    Click Element   xpath=//input[@name="consent" and @type="checkbox"]
    SeleniumLibrary.Wait until Element Is Visible   xpath=//button[text()="สมัครสมาชิก"]
    Click Element   xpath=//button[text()="สมัครสมาชิก"]


