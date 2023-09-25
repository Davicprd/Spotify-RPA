*** Settings ***
Library   SeleniumLibrary
Resource    ../pages/keywords/K_common.robot
Resource    ../pages/keywords/K_home.robot
Resource    ../pages/keywords/K_library.robot

*** Keywords ***
Acessar Spotify 
    Open Browser                     ${URL_HOME}         ${BROWSER}
    Maximize Browser Window
    Title Should Be                  Spotify – Web player: música para todas as pessoas
Fechar BROWSER
    Close Browser
Fazer Login
    Clica em "Entrar" e verefica a pagina de login
    Insere os dados de login e verifica se logou 
Cria nova playlist
    Criar nova playlist Projeto Robot
Deleta playlist
    Deletar playlist Projeto Robot