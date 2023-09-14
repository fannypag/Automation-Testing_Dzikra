*** Settings ***
Library    Selenium2Library
Resource    ../PO/doa.robot

*** Keywords ***
user verify login success
    Login Success

user enter page doa
    Navigate To Menu Doa

user input new doa
    Add Doa    ${namadoa}    ${arab}        ${transliterasi}    ${translasi}    ${referensi}

user verify add doa
    Verify Create Doa Success