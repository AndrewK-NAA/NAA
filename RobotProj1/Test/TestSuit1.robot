*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary

Suite Setup    Log    Inside Suite Setup
Suite Teardown    Log    Inside Suite Teardown
Test Setup    Log    Inside Test Setup
Test Teardown    Log    Inside Test Teardown

*** Test Cases ***
MySecondTest
        Log    Hello World...rubbish!    
     
FirstSeleniumTesst
    Open Browser        https://google.com           chrome    options=add_argument("--start-maximized")
    Set Browser Implicit Wait    5
    Input Text          name=q                       Automation step by step
    Press Keys          false    ESC
    # Click Button    name=btnK    
    Sleep               2 
    Close Browser
    
SampleLoginTest
    [Documentation]    This is a samle loging test
    [Tags]    TagIdNbr1
    Open Browser    ${URL}           chrome    options=add_argument("--start-maximized")
    set selenium speed    0.1 second
    LoginKW
    #Click Element    id=welcome
    Click Element    xpath:/html/body/div[1]/div[1]/a[2] 
    Log    This was executed by %{username} on %{os}
    Click Element    xpath://*[@id="welcome-menu"]/ul/li[2]/a 
    Close Browser
    
Sample2LoginTest
    [Documentation]    This is a samle loging test
    [Tags]    TagIdNbr1
    Open Browser    ${URL}           chrome    options=add_argument("--start-maximized")
    set selenium speed    0.1 second
    LoginKW
    #Click Element    id=welcome
    Click Element    id:welcome 
    Log    This was executed by %{username} on %{os}
    Click Element    xpath://*[@id="welcome-menu"]/ul/li[2]/a    
    Close Browser
  
    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINGDATA}    username=Admin    password=admin123 

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINGDATA}[password]  
    Click Button    id=btnLogin    
      
    