*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    http://www.google.com
${BROWSER}    Chrome

*** Keywords ***
open the browser
    Open Browser    ${HOMEPAGE}    ${BROWSER}

search topic
    [Arguments]     ${topic}
    Input Text    name=q    ${topic}
    Press Keys    name=q    ENTER

*** Test Cases ***
Open Browser
    open the browser
    Set Browser Implicit Wait    5
    
Search on Google
    search topic    browserstack