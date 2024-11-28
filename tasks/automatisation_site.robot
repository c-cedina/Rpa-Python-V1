*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.youtube.com
${ACCEPT_BUTTON}  //button[@aria-label="Accepter l'utilisation de cookies et d'autres données aux fins décrites"]
${SEARCH_INPUT}  //input[@aria-label="Rechercher"]
${SEARCH_TEXT}   RPA



*** Test Cases ***
Open YouTube
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    ${ACCEPT_BUTTON}    timeout=10
    Scroll Element Into View    ${ACCEPT_BUTTON}
    Click Button    ${ACCEPT_BUTTON}
    Sleep    5
    Wait Until Page Contains Element    xpath=${SEARCH_INPUT}    timeout=10
    Input Text    xpath=${SEARCH_INPUT}    ${SEARCH_TEXT}
    Sleep    30

