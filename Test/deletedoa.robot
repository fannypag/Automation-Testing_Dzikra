*** Settings ***
Library    Selenium2Library
Resource    ../Resources/App/deletedoa.robot
Resource    ../Variables/Login_Var.robot

*** Test Cases ***
Delete Doa Action
    [Tags]    positive_detail
    Given user verify delete doa success
    When user will delete doa
    And user delete doa action
    Then user verify delete doa    
