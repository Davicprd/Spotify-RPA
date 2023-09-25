*** Settings ***

Documentation         Setup de keywords para os casos de teste com keywords iguais
Library               SeleniumLibrary        timeout=15
Resource              ../variables/V_home.robot
Resource              ../variables/V_common.robot
Resource              ../variables/V_library.robot

*** Keywords ***
Acessa a página inicial
    Click Element    ${HOME}
Pesquisar música na barra de pesquisa
    Wait Until Element Is Visible    ${SEARCH_BUTTON}
    Click Element                    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SEARC_FIELD}
    Input Text                       ${SEARC_FIELD}  ${MUSIC}
Verificar se música apareceu nos resultados
    Wait Until Element Is Visible    ${IMG_Die_for_You}                      
    Page Should Contain Image        ${IMG_Die_for_You}
