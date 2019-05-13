*** Settings ***
Library     Selenium2Library
*** Keywords ***
Load OrangeHmr
    Open browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  Chrome
    Maximize Browser Window

Type Email
    [Arguments]  ${Email}
    Input text  id=txtUsername  ${Email}

Type Password
    [Arguments]  ${Password}
    Input password  id=txtPassword  ${Password}

Click Login
    Click button    id=btnLogin

Click Admin
    Click Link  id=menu_admin_viewAdminModule

Type UserName
    [Arguments]  ${UserName}
    Input text  id=searchSystemUser_userName    ${UserName}

Choose Role
    [Arguments]  ${Role}
    Select From List By Index   id=searchSystemUser_userType    ${Role}

Type EmployeeName
    [Arguments]  ${Name}
    Input text  id=searchSystemUser_employeeName_empName    ${Name}

Choose Status
    [Arguments]  ${Status}
    Select From List By Value   id=searchSystemUser_status      ${Status}

Click Search
    Click button    id=searchBtn

Click Reset
    Click button    id=resetBtn

Click Add
    Click button    id=btnAdd

Set Role
    [Arguments]  ${SetRole}
    Select From List By Value   id=systemUser_userType      ${SetRole}

Type New Employee Name
    [Arguments]  ${NewName}
    Input text  id=systemUser_employeeName_empName  ${NewName}

Type New User Name
    [Arguments]  ${UserName}
    Input text  id=systemUser_userName  ${UserName}

Set Status
    [Arguments]  ${SetStatus}
    Select From List By Value   id=systemUser_status    ${SetStatus}

Set Password
    Input password  id=systemUser_password  ${NewPassword}

Cofirm Password
    Input password  id=systemUser_confirmPassword   ${NewPassword}

Click Save
    Click button    id=btnSave


