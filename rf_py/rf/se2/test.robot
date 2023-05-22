*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource          keywords.resource
Library           DateTime

*** Variables ***
${var1}    Set Variable    text1
${var2}    Set Variable    text1
${var3}        5
${var4}        8
${res}         13


*** Test Cases ***
Simple Test Case
    [Documentation]    Shows some assertion keywords
    Should Be Title Case    Robot Framework
    Should Be Equal    ${var1}    ${var2}
    Should Be True    ${var3} + ${var4} == ${res}

Test with Keywords
    Store Text    Hail Our Robot
    Add Text To Stored Text     Overlords!
    Verify Stored Text Length    25
    ${current_text}=    Get Stored Text
    Should Be Equal    ${current_text}    Hail Our Robot Overlords!

Test for the year 2023 tha
    [Documentation]    Tests if it is still 2023...
    ${date}=    Get Current Date    result_format=datetime
    Log    ${date}
    Should Be Equal As Strings    ${date.year}    2023

Test Case that ACTUALLY DOES NOT fail ANYMORE
    Check Correct Greeting    Hail Our Robot Overlords!
    Check Correct Greeting    Hello World!
    Check Correct Greeting    Hello Daniel!
