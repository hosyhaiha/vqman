*** Settings ***
Library                 SeleniumLibrary         WITH NAME                   SL

*** Keywords ***
Go To Google
    [Arguments]                               ${remote_selenium_server_tmp}
    ...                                       ${url}
    ...                                       ${browser}
    SL.Open Browser                           ${url}
    ...                                       ${browser}
    ...                                       Edge
    ...                                       http://${remote_selenium_server_tmp}:9515
    sleep                                     5s
    SL.Close Browser

Open_Browser_To_Google
#    Go To Google      119.0.2151.97      https://google.com      Edge
    Open Browser      https://google.com      Edge      remote_url=http://10.2.9.116:9515