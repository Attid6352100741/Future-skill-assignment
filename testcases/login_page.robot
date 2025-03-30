*** Settings ***
Library     SeleniumLibrary
Variables   ../resources/config/config.yaml
Variables   ../resources/testdata/testdata.yaml
Resource    ../Keywords/login_page.robot


*** Test Cases ***
Register page testing
    SeleniumLibrary.Open Browser    ${baseUrl}      gc


Register page testing
    Click register button on login page

Input form data from regsiter page
    Input form data from register screen
    Sleep   5
    SeleniumLibrary.Close Browser