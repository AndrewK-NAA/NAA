*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    Inside Suite Setup
Suite Teardown    Log    Inside Suite Teardown
Test Setup    Log    Inside Test Setup
Test Teardown    Log    Inside Test Teardown

*** Test Cases ***
MyFirstTest
        Log    Hello World...    
       
FirstSeleniumTesst
    Open Browser        https://google.com           chrome
    Set Browser Implicit Wait    5
    Input Text          name=q                       Automation step by step 
    Press Keys          false    ESC
    # Click Button    name=btnK    
    Sleep               2 
    Close Browser
    
SampleLoginTest
    [Documentation]    This is a samle loging test
    [Tags]    TagIdNbr1
    Open Browser    ${URL}           chrome
    Set Browser Implicit Wait    8
    LoginKW
    #Click Element    id=welcome
    Click Element    id=welcome   
    Log    This was executed by %{username} on %{os}     
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINGDATA}    username=Admin    password=admin123 

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINGDATA}[password]  
    Click Button    id=btnLogin    
      
    