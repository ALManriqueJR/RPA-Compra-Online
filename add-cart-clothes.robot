*** Settings ***
Library     Browser

*** Variables ***


*** Tasks ***
Comprar camisa online
    Dado que eu esteja na MyStore
    Quando pesquisar Summer
    Entao clico em T-shirts
    Entao adiciono item ao carrinho

*** Keywords ***
Dado que eu esteja na MyStore
    New Browser                headless=false
    New Context
    New Page                   http://automationpractice.com/index.php

Quando pesquisar Summer
    Type Text    //*[@id="search_query_top"]    Summer
    Keyboard Key    press   Enter

Entao clico em T-shirts
    Click    //*[@id="block_top_menu"]/ul/li[3]/a

Entao adiciono item ao carrinho
    Click    //*[@id="center_column"]/ul/li/div
    Hover    //*[@class="product-container"]
    Click    //*[@id="center_column"]/ul/li[1]/div/div[2]/div[2]/a[1]/span
    Sleep    3
    Take Screenshot
