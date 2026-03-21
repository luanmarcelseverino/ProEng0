*** Settings ***
Library    Browser

*** Variables ***
# Seletores (IDs e CSS) centralizados
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
    # Validação: Espera o título "Products" aparecer para confirmar o login
    Wait For Elements State    ${HEADER_TITLE}    visible    timeout=5s