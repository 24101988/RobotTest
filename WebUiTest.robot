*** Settings ***
Resource    lib/WebUiKeywords.robot

*** Test Cases ***
Check Title
    [Tags]    Basic
    [Setup]    Open Page in Browser
    Title Should Be    Tanie książki nowe i używane | Skup książek | Sklep online
    [Teardown]    Close Browser

Check Main Navigation Menu
    [Tags]    Basic
    [Setup]    Open Page in Browser
    Chrome - Wait And Click Main Menu Button By Text    \nKATEGORIE\n
    [Teardown]    Close Browser

Test External Keyword
    [Tags]    External
    [Documentation]    (Very small:) Example keyword usage from external Python Library
    ${result}    My Keyword    4    7
    Should Be Equal    ${result}    ${11}

Check size
    [Tags]    Basic
    [Documentation]    Find element/image and return width and height
    [Setup]    Open Page in Browser
    ${W}    ${H}    Get Element Size    xpath://*[@id="header"]/header/div[1]/nav/div[1]/div/a/picture/img
    Log    ${W} ${H}
    [Teardown]    Close Browser

Find element
    [Tags]    Basic
    [Documentation]    Scroll page until element "Jak możesz pomagać?" is found
    [Setup]    Open Page in Browser
    Scroll Element Into View    ${FOOTERLINK}
    Element Should Be Visible    ${FOOTERLINK}
    [Teardown]    Close Browser
