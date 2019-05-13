*** Settings ***
Library     Selenium2Library
Resource  keywords.robot

*** Test Cases ***
Admin
    Click Admin
    Type UserName   alicemay
    Choose Role     2
    Type EmployeeName   Alice Suzi May
    Choose Status   1
    Click Search
    Click Reset
