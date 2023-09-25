*** Variables ***
${USER_EMAIL}                  spotifyprojetorobot@gmail.com     
${USER_PASSWORD}               Projetorobotspotify123
${PLAYLIST_NAME}               Projeto Robot
${ENTER}                       //*[@id="main"]//*[@data-testid="login-button"]
${LOGIN_USERNAME}              //*[@id="login-username"]
${LOGIN_PASSWORD}              //*[@id="login-password"] 
${LOGIN_BUTTON}                //*[@id="login-button"]

${SEARCH_BUTTON}               //*[@id="main"]/div/div[2]/div[2]/nav/div[1]/ul/li[2]
${SEARC_FIELD}                 //*[@id="main"]/div/div[2]/div[1]/header/div[3]/div/div/form/input

${CREATE_PLAYLIST}             //*[@id="main"]//*[@class="ButtonInner-sc-14ud5tc-0 jfhNps encore-inverted-light-set eL94fWmhg6WbrdKZfGEW"]              
${PLAYLIST}                    //*[@id="main"]/div/div[2]/div[2]/nav/div[2]/div[1]/div[2]/div[4]/div/div/div/div[2]/ul/div/div[2]/li/div/div[1]
${PLAYLIST_EDIT}               //*[@id="context-menu"]/ul/li[2]/button
${PlAYLIST_SETTINGS}           //*[@id="main"]//*[@class="Button-sc-1dqy6lx-0 jVIpUU"]
${PLAYLIST_EDIT_NAME}          //*[@class="f0GjZQZc4c_bKpqdyKbq JaGLdeBa2UaUMBT44vqI"]
${PLAYLIST_SAVE_EDIT}          xpath=/html/body//*[@data-testid="playlist-edit-details-save-button"]
${PLAYLIST_DEL}                //*[@id="context-menu"]/ul/li[4]/button
${PLAYLIST_DEL_CONFIRM}        xpath=/html/body/div[21]/div/div/div/div/button[2]/span
${PlAYLIST_NAME_VERIFY}        //*[@id="main"]//*[@class="Type__TypeElement-sc-goli3j-0 dYGhLW"][contains(text(),"Projeto Robot")]
${PLAYLIST_EDIT_NAME_EMPTY}    //*[@class="f0GjZQZc4c_bKpqdyKbq JaGLdeBa2UaUMBT44vqI UCj7uEr7vR_0DO3cQHcX"]

${PROFILE_SETTINGS}            //*[@id="main"]//*[@aria-label="Projeto Robot"]
${PROFILE}                     //*[@id="context-menu"]/div/ul/li[2]/a
${URL_HOME}                    https://open.spotify.com/intl-pt
${BROWSER}                     chrome
