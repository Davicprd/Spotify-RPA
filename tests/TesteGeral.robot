*** Settings ***
Resource       ../resource/presetup.robot
Resource    ../pages/keywords/K_common.robot
Resource    ../pages/keywords/K_home.robot
Resource    ../pages/keywords/K_library.robot

Suite Setup     Acessar Spotify
Test Setup      Fazer Login
Test Teardown   Deleta playlist
Suite Teardown  Close Browser

*** Test Cases ***
TesteGeral
    Cria nova playlist
    Abre a playlist 
    Adiciona uma música a playlist
    Deleta uma música da playlist
    Pesquisar música na barra de pesquisa
    Verificar se música apareceu nos resultados
    Abre a playlist
   
   

