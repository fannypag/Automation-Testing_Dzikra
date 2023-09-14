*** Settings ***
Library    Selenium2Library
Resource    ../Resources/App/login.robot
Resource    ../Variables/Login_Var.robot


*** Test Cases ***
Login as admin with valid credentials
    Given user open browser    ${delay}    ${url}    ${browser}
    And user fill the field    ${username}    ${password}   
    When user click login button
    Then user verify login success
