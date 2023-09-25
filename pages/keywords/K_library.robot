*** Settings ***

Documentation         Setup de keywords para os casos de teste com keywords iguais
Library               SeleniumLibrary        timeout=15
Resource              ../variables/V_common.robot
Resource              ../variables/V_library.robot

*** Keywords ***
Abre a playlist 
    Wait Until Element Is Visible    ${PLAYLIST}
    Click Element                    ${PLAYLIST}        
Adiciona uma música a playlist
    Wait Until Element Is Visible    ${SEARCHBOX}
    Input Text                       ${SEARCHBOX}    ${MUSIC}
    Wait Until Element Is Visible    ${ADD_FIRST} 
    Click Button                     ${ADD_FIRST} 
Deleta uma música da playlist
    Wait Until Element Is Visible    ${FIRST_MUSIC} 
    Click Element                    ${FIRST_MUSIC} 
    Wait Until Element Is Visible    ${FIRST_SETTINGS}
    Click Button                     ${FIRST_SETTINGS}
    Wait Until Element Is Visible    ${FIRST_DEL}
    Click Button                     ${FIRST_DEL}      

