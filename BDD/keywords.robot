*** Settings ***
Library         calculator.py


*** Keywords ***
The Calculator Is Running
    Log    Opening Calculator
    Start Calculator

The User Enters The Term "${term}"
    Log    Entering ${term}

    ${my_local}    Set Variable     ${term}
    Log     ${my_local}
    Set Test Variable    ${term}

The User Triggers The Calculation
    Log    Triggering Calculation
    ${result}    Calculate Term    ${term}
    Set Test Variable   ${result}
    
The Result Should Be "${expected}"
    Log    Checking Result
    Should Be Equal As Numbers    ${result}    ${expected}