*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Start TestCase
    Verify Basic Search
    Close TestCase

*** Keywords ***

Start TestCase
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

Verify Basic Search
    Input Text  xpath: //*[@id="gh-ac"]  mobile
    Press Keys  xpath: //*[@id="gh-btn"]  [Return]
    Page Should Contain  Shop by Brand

Close TestCase
    Close Browser
