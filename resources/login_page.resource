*** Settings ***
Library    Browser

*** Variables ***

${INPUT_USER}     css=#user-name
${INPUT_PASS}     css=#password
${BTN_LOGIN}      css=#login-button
${HEADER_TITLE}   css=.title

*** Keywords ***
Fazer Login Com Sucesso
    [Arguments]    ${username}    ${password}
    Fill Text      ${INPUT_USER}    ${username}
    Fill Text      ${INPUT_PASS}    ${password}
    Click          ${BTN_LOGIN}
    
    Wait For Elements State    ${HEADER_TITLE}    visible    timeout=5s