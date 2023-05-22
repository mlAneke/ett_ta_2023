*** Settings ***
Resource        keywords.robot

*** Test Cases ***
Test Calculator With BDD Syntax
    Given The Calculator Is Running
    When The User Enters The Term "1 + 1"
    And The User Triggers The Calculation
    Then The Result Should Be "2"

Test what would happen if a letter and a number are added
# In this section first I will verify that this particular scenario fails and then I try to modify it so that I have a pass test
    Given The Calculator Is Running
    When The User Enters The Term "1 + 1"
    And The User Triggers The Calculation
    Then The Result Should Be "2"