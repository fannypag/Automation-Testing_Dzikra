*** Settings ***
Library    Selenium2Library
Resource    ../PO/detailbutirdailymisi.robot

*** Keywords ***
user verify login detail daily misi item success
    Login Detail Butir Daily Misi Success

user will views detail daily misi item
    Sleep    2
    Navigate Go To Menu Butir Daily Misi

user go to detail daily misi item page
    Click others button

user verify detail daily misi item
    [Arguments]    ${title}
    Verify detail butir daily misi success    ${title}