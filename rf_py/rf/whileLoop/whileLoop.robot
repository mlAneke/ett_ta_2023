*** Variables ***
${max_iter}    10


*** Keywords ***
Run keyword until max_iter matches internal counter
    [Arguments]    ${i}
    ${counter}=    Set Variable    0

    WHILE    ${counter} != ${i}
        Log To Console    ${counter}
        ${counter}    Evaluate    ${counter}+1
    END

*** Test Cases ***
Testing a while loop
    Run keyword until max_iter matches internal counter    ${max_iter}
