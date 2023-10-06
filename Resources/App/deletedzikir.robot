*** Settings ***
Library    Selenium2Library
Resource    ../PO/deletedzikir.robot

*** Keywords ***
user verify delete dzikir success
    Login Delete Dzikir Success

user will delete dzikir
    Navigate Go To Menu Dzikir For Delete

user delete dzikir action
    Click Others Button Dzikir

user verify delete dzikir
    # [Arguments]    ${title}
    Verify Delete Dzikir Success    
