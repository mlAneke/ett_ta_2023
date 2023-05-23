*** Settings ***
Library  Car.py    WITH NAME    volkswagen

*** Variables ***
@{SPEED_LIMIT}    10    60    80    100    120

${variable1}    198
${variableX}    I am an STRING

*** Test Cases ***
Testing an object
    creating an object

Test passing 2 vars/arguments
    I am just printing to the log and console 2 passed arguments    ${variable1}    ${variableX}            #I am var1     I am var 2

*** Keywords ***
creating an object
    [Documentation]    this keyword calls resources from py file
    FOR    ${current_speed_limit}    IN    @{SPEED_LIMIT}
        Log    ${current_speed_limit}

        volkswagen.Set Speed Limit    ${current_speed_limit}
        volkswagen.Car Is Moving
        volkswagen.Speed Is Within Limit
        
    END


    #volkswagen.Set Speed Limit    ${SPEED_LIMIT}
    #volkswagen.Car Is Moving
    #volkswagen.Speed Is Within Limit

    #volkswagen.Set Speed Limit    50
    #volkswagen.Decelerate Car
    #volkswagen.speed_decreased_by      15


I am just printing to the log and console 2 passed arguments
    [Arguments]    ${var1}     ${var2}
    Log     ${var1}
    Log     ${var2}
    Log To Console    ${var1} ${var2} 
    #Log To Console    ${var2}    

    