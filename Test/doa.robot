*** Settings ***
Library    Selenium2Library
Resource    ../Resources/App/doa.robot
Resource    ../Variables/Login_Var.robot
Resource    ../Variables/Doa_Var.robot

*** Test Cases ***
Add new doa
    [Tags]    positive_doa
    Given user verify login success
    And user enter page doa   
    When user input new doa
    Then user verify add doa
    
   