*** Settings ***
Library    Selenium2Library
Resource    ../PO/detailbutirdzikir.robot

*** Keywords ***
user verify login detail butir dzikir success
    Login Detail Butir Success

user will views detail dzikir
    Sleep    2
    Navigate Go To Menu Butir Dzikir

user go to detail dzikir page
    Click others button

user verify detail butir dzikir
    [Arguments]    ${title}
    Verify detail success    ${title}