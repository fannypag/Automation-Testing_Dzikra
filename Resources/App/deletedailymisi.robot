*** Settings ***
Library    Selenium2Library
Resource    ../PO/deletedailymisi.robot

*** Keywords ***
user verify delete daily misi success
    Login Delete Daily Misi Success

user will delete daily misi
    Navigate Go To Menu Misi For Delete

user delete daily misi action
    Click Others Button Daily Misi

user verify delete daily misi
    Verify Delete Daily Misi Success  
