*** Settings ***
Resource        keywords.robot

*** Test Cases ***
Test Calculator With BDD Syntax
    Given The Calculator Is Running
    When The User Enters The Term "1 + 1"
    And The User Triggers The Calculation
    Then The Result Should Be "2"

Test Computing floating numbers/numbers with decimals
    Given The Calculator Is Running
    When The User Enters The Term "1.5 + 2.3"
    And The User Triggers The Calculation
    Then The Result Should Be "3.8"

#Test what would happen if a letter and a number are added
# In this section first I will verify that this particular scenario fails and then I try to modify it so that I have a pass test
    #Given The Calculator Is Running
    #When The User Enters The Term " k + 5 "
    #And The User Triggers The Calculation
    #Then The Result Should Be " <<<what are you wating to happen?!?>>> "        

    ### Notice, we know how the system would behave if we add an invalid character to be computer
     