*** Settings ***
Library    Selenium2Library
Resource    ../Resources/App/detaildoa.robot
Resource    ../Variables/Login_Var.robot
Resource    ../Variables/DetailDoa_Var.robot

*** Test Cases ***
Views detail doa
    [Tags]    positive_detail
    Given user verify login detail success
    When user will views detail doa
    And user go to detail doa page
    Then user verify detail doa    ${title}
