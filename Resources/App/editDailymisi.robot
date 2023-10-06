*** Settings ***
Library    Selenium2Library
Resource    ../PO/editDailymisi.robot

*** Keywords ***
user login edit daily misi success
    Login Edit Daily Misi Success

user will edit daily misi
    Navigate Menu Misi
    Click other button

user edit field daily misi
    [Arguments]    ${editnamamisi}    ${editdeskripsi}    ${edittarget}    ${editketerangan}
    Edit Daily Misi    ${editnamamisi}    ${editdeskripsi}    ${edittarget}    ${editketerangan}

user verify edit daily misi
    Verify Edit Daily Misi Success
