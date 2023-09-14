*** Settings ***
Library    Selenium2Library
Resource    ../PO/login.robot
Resource    ../../Variables/Login_Var.robot



*** Keywords ***
user open browser
    [Arguments]    ${delay}    ${url}    ${browser}
    Begin Browser    ${url}    ${browser}
    Begin Web Test    ${delay}   
        

user fill the field
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}

user click login button
    Click Login Button

user verify login success
    Verify Login Success

