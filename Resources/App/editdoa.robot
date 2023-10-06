*** Settings ***
Library    Selenium2Library
Resource    ../PO/editdoa.robot

*** Keywords ***
user verify edit doa success
    Login Edit Success

user will edit doa
    Navigate Menu Doa
    Click other button

user edit field doa
    [Arguments]    ${editnamadoa}    ${edittranslasi}    ${editreferensi} 
    Edit Doa    ${editnamadoa}    ${edittranslasi}    ${editreferensi}

user verify edit doa
    Verify Edit Doa Success