*** Settings ***
Library    Selenium2Library
Resource    ../PO/deletebutirdailymisi.robot

*** Keywords ***
user verify delete butir daily misi success
    Login Delete Butir Daily Misi Success

user will delete daily misi item
    Navigate Go To Menu Misi For Delete

user delete daily misi item action
    Click Others Button

user verify delete daily misi item
    Verify delete butir daily misi success   
