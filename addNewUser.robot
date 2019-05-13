*** Settings ***
Library     Selenium2Library
Resource  keywords.robot

*** Variables ***
${NewPassword}  P@ssword_123456789
*** Test Cases ***
Add New User
    Click Add
    Set Role    1
    Type New Employee Name  Test User
    Type New User Name  test23
    Set Status  1
    Set Password
    Cofirm Password
    Click Save
