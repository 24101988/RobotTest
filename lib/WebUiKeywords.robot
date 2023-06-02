*** Settings ***
Library    SeleniumLibrary
Library    MyLib.py
Resource   ../GlobalVariables.robot

*** Keywords ***

Open Page in Browser
    Open Browser    ${ADRESS}    browser=${BROWSER}

Chrome - Wait And Click Main Menu Button By Text
    [Arguments]    ${text}
    Wait And Click Element    xpath=//*[@id="categoryTab"]/a[text()="${text}"]

Wait And Click Element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    10    0.1    Click Element    ${locator}

