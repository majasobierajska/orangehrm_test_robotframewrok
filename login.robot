*** Settings ***
Library     Selenium2Library
Resource  keywords.robot
Library     Selenium2Library
Resource  keywords.robot
*** Test Cases ***
Login
    Load OrangeHmr
    Type Email  Admin
    Type Password   admin123
    Click Login
