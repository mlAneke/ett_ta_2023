*** Settings ***
Library  Car.py    WITH NAME    volkswagen

*** Variables ***
${SPEED_LIMIT}    60

*** Test Cases ***
Testing an object
    creating an object

*** Keywords ***
creating an object

    
    volkswagen.Set Speed Limit    ${SPEED_LIMIT}
    volkswagen.Car Is Moving
    volkswagen.Speed Is Within Limit
    #volkswagen.Reset Speed

    #volkswagen.Set Speed Limit    50
    #volkswagen.Decelerate Car
    #volkswagen.speed_decreased_by      15