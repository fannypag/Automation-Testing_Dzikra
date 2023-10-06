*** Settings ***
Library    Selenium2Library
Resource    ../PO/detaildzikir.robot

*** Keywords ***
user verify login detail dzikir success
    Login Detail Success

user will views detail dzikir
    Sleep    2
    Navigate Go To Menu Dzikir

user go to detail dzikir page
    Click others button

user verify detail doa
    [Arguments]    ${title}
    Verify detail success    ${title}