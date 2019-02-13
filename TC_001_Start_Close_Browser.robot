*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resources/Resource1.robot
Library  SeleniumLibrary
Resource  ../Resources/Resource1.robot
Resource  ../Resource/Resource1.robot
Library  SeleniumLibrary
Resource  ../Resources/Resource1.robot

*** Variables ***
#${URL}   http://www.facebook.com
${Browser}      Chrome
#${URL_TW}     http://www.thetestingworld.com


*** Test Cases ***
RobotFirstTestCase
    Start Browser and Maximize
    input text      name:fld_username     hello
    input text  name:fld_email  Abcd
    click button  xpath=//input[@type='submit']
    set browser implicit wait   5
    close browser
   # ${Res}=     Start Browser and Maximize  ${URL}   ${Browser}
    #log     ${Res}
    #[Setup]  Start Browser and Maximize     ${URL}   ${Browser}
    #[Teardown]  close browser
    #



Robot Second Test Case
    #[Setup]  Start Browser and Maximize     ${URL}   ${Browser}
    #[Teardown]  close browser
    open browser    ${URL}   ${Browser}
    #select radio button  add_type   office
    #select checkbox     name:terms
    click link  xpath://a[text()="Read Detail"]
    close browser

RobotThirdTestCase
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    input text  name:fld_username   Testing
    input text  name:fld_email  testingworldinida@gmail.com
    input text  name:fld_password   123456
    input text  name:fld_cpassword  123456

RobotNEXTTestCase
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    select radio button  add_type   office
    click button     xpath://input[@type='submit']


    #open browser    ${URL_TW}
    #maximize browser window
    #Enter Username Password Email   testing     testingworldinida@gmail.com     123456


*** Keywords ***
Enter Username Password Email
    [Arguments]  ${username}    ${email}    ${password}
    input text  name:fld_username   ${username}
    input text  name:fld_email  ${email}
    input text  name:fld_password   ${password}
