*** Comments ***
Sample test suit testing the application loging funtionality
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${user}    testautouser1@wiley.com.uat
${password}    TestAuto1

*** Test Cases ***
Application Login
    Open Browser    https://test.salesforce.com/    chrome
    loging to application    ${user}    ${password}  
    
*** Keywords ***
loging to application
    [Arguments]    ${user}    ${password}
    Input Text    //*[@id="username"]    ${user} 
    Input Password    locator    ${password}  
    Click Element    locator   
    Page Should Contain    text   
    ${title}    Get Title 
    Log    ${title}     
    

    
    
