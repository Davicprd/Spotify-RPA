*** Settings ***

Documentation         Setup de keywords para os casos de teste com keywords iguais
Library               SeleniumLibrary        timeout=15
Resource              ../variables/V_common.robot

*** Keywords ***
Clica em "Entrar" e verefica a pagina de login
    Wait Until Element Is Visible    ${ENTER}
    Click Button                     ${ENTER}
    Wait Until Element Is Visible    ${LOGIN_USERNAME}
    Title Should Be                  Login - Spotify
Insere os dados de login e verifica se logou 
    Wait Until Element Is Visible    ${LOGIN_USERNAME}
    Input Text                       ${LOGIN_USERNAME}    ${USER_EMAIL}
    Input Password                   ${LOGIN_PASSWORD}    ${USER_PASSWORD}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Click Button                     ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${PROFILE_SETTINGS}
Criar nova playlist Projeto Robot
    Wait Until Element Is Visible    ${CREATE_PLAYLIST}
    Click Element                    ${CREATE_PLAYLIST} 
    Wait Until Element Is Visible    ${PlAYLIST_SETTINGS}
    Click Element                    ${PlAYLIST_SETTINGS}        
    Wait Until Element Is Visible    ${PLAYLIST_EDIT}
    Click Element                    ${PLAYLIST_EDIT}
    Click Element                    ${PLAYLIST_EDIT_NAME}
    FOR     ${i}    IN RANGE   0   20
        PressKeys       None  ARROW_RIGHT
        PressKeys       None  BACKSPACE
    END
    Input Text                       ${PLAYLIST_EDIT_NAME_EMPTY}    Projeto Robot   
    Click Element                    ${PLAYLIST_SAVE_EDIT} 
    Wait Until Element Is Visible    ${PlAYLIST_NAME_VERIFY}  
Deletar playlist Projeto Robot
    Click Button                     ${PlAYLIST_SETTINGS}
    Wait Until Element Is Visible    ${PLAYLIST_DEL}
    Click Button                     ${PLAYLIST_DEL}
    Wait Until Element Is Visible    ${PLAYLIST_DEL_CONFIRM}
    Click Element                    ${PLAYLIST_DEL_CONFIRM}               
     


