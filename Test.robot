*** Settings ***
Library                 SeleniumLibrary         WITH NAME                   SL

*** Keywords ***
Open Browser To Google
    [Arguments]                               ${remote_selenium_server_tmp}
    ...                                       ${url}
    ...                                       ${browser}
    SL.Open Browser                           ${url}
    ...                                       ${browser}
    ...                                       firefox
    ...                                       http://${remote_selenium_server_tmp}:17556
    sleep                                     5s
    SL.Close Browser

Open_Browser_To_Google
    Open Browser To Google      10.2.9.116      https://google.com      Edge