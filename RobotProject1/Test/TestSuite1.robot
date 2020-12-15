*** Settings ***
Library  SeleniumLibrary  

*** Test Cases ***
MyFirstTestCase
    Log    Hellow  
    
FirstSeleniumTest
    Open Browser    https:google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name =q    Automation 
    Press Keys    name =q    ENTER
    # Click Button    name =btnk    
    Sleep    2     
    Close Browser  
    Log    Test Completed      
   