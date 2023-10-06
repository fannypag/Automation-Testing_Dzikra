*** Settings ***
Library    Selenium2Library
Resource    ../PO/editdzikir.robot

*** Keywords ***
user login edit dzikir success
    Login Edit Success

user will edit dzikir
    Navigate Menu Dzikir
    Click other button

user edit field dzikir
    [Arguments]    ${editnamadzikir}    ${editbacaandzikir}    ${editpengulangan} 
    Edit Dzikir    ${editnamadzikir}    ${editbacaandzikir}    ${editpengulangan}

user verify edit dzikir
    Verify Edit Dzikir Success
