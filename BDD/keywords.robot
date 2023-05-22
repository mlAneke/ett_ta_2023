*** Settings ***
Library         calculator.py

*** Variables ***
${my_global_input}    initialState


*** Keywords ***
The Calculator Is Running
    Log    Opening Calculator
    Start Calculator

The User Enters The Term "${mylocal}"
    Log    Entering ${mylocal}

    ${my_local}    Set Variable     ${mylocal}
    Log     ${my_local}
    #Log To Console    ${my_global_input}
    Set Global Variable     ${my_global_input}    ${mylocal}
    #Log To Console    ${my_global_input}

The User Triggers The Calculation
    Log    Triggering Calculation
    ${result}    Calculate Term    ${my_global_input}
    Set Test Variable   ${result}
    
The Result Should Be "${expected}"
    Log    Checking Result
    Should Be Equal As Numbers    ${result}    ${expected}