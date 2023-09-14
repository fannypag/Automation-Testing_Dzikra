*** Settings ***
Library    Selenium2Library
Resource    ../PO/deletedoa.robot

*** Keywords ***
user verify delete doa success
    Login Delete Doa Success

user will delete doa
    Navigate Go To Menu Doa For Delete

user delete doa action
    Click Others Button Doa

user verify delete doa
    # [Arguments]    ${title}
    Verify Delete Doa Success    
