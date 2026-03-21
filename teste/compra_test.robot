*** Settings ***
Resource    ../resources/login_page.resource
Test Teardown    Take Screenshot    # Tira print automático ao final de cada teste

*** Test Cases ***
Deve realizar a compra de uma mochila com sucesso
    # Configuração do Navegador
    New Browser    browser=chromium    headless=False
    New Page       https://www.saucedemo.com/
    
    # Ação de Login (Usando a Keyword do nosso Resource)
    Fazer Login Com Sucesso    standard_user    secret_sauce
    
    # Fluxo de Compra
    Click          css=#add-to-cart-sauce-labs-backpack
    Click          css=.shopping_cart_link
    
    # Validação Final (O "Fiscal")
    Get Text       css=.inventory_item_name    contains    Sauce Labs Backpack