*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Basic Search
    Input Text  id:gh-ac  mobile
    Press Keys  id:gh-btn  [Return]
    Page Should Contain  Samsung