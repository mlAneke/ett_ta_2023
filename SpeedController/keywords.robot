*** Settings ***
Library  Car.py   # WITH NAME    tesla

*** Keywords ***
creating an object

    Car.Set Speed Limit    70
    Car.Car Is Moving
    Car.Speed Is Within Limit

    #Car.Set Speed Limit    50
    #Car.Decelerate Car
    #Car.speed_decreased_by      15

Set Speed Limit
    [Arguments]    ${limit}
    tesla.Set Speed Limit    ${limit}
    Log    Setting speed limit to ${limit} km/h.

Car Is Moving
    Log    The car is moving.

Speed Is Within Limit
    [Arguments]    ${lower_limit}    ${upper_limit}
    Log    Checking if current speed is within the limit (${lower_limit} to ${upper_limit} km/h).

Decelerate Car
    Log    Decelerating the car.

Speed Decreased By
    [Arguments]    ${decrease_rate}
    Log    Checking if speed has decreased by ${decrease_rate} km/h.