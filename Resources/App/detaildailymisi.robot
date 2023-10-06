*** Settings ***
Library    Selenium2Library
Resource    ../PO/detaildailymisi.robot

*** Keywords ***
user verify login detail daily misi success
    Login Detail Daily Misi Success

user will views detail daily misi
    Sleep    2
    Navigate Go To Menu Misi

user go to detail daily misi page
    Click others button

user verify detail daily misi
    [Arguments]    ${title}
    Verify detail daily misi success    ${title}