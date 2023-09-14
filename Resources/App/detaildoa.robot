*** Settings ***
Library    Selenium2Library
Resource    ../PO/detaildoa.robot

*** Keywords ***
user verify login detail success
    Login Detail Success

user will views detail doa
    Sleep    2
    Navigate Go To Menu Doa

user go to detail doa page
    Click others button

user verify detail doa
    [Arguments]    ${title}
    Verify detail success    ${title}