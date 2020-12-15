
*** Comments ***
Sample test suit testing the application loging funtionality

*** Settings ***
Library    SeleniumLibrary
    
*** Variables ***
${user}    testautouser1@wiley.com.uat
${password}    TestAuto1

*** Test Cases ***
test the application login functionality 
    Open Browser    https://test.salesforce.com/    chrome
    login to application    ${user}    ${password}
    [Teardown]    Close All Browsers
    
*** Keywords ***
login to application
    [Arguments]  ${user}    ${password}
     Input Text    //*[@id="username"]   ${user}
     Input Password    //*[@id="password"]    ${password}    
     Click Element    //*[@id="Login"] 
     Page Should Contain Element   //*[@id="148:223;a"]/span[1]/div/span
     ${title}    Get Title
     Log    ${title}    
    

    
    






