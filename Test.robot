*** Settings ***
Library                 SeleniumLibrary         WITH NAME                   SL

*** Keywords ***
Open_Browser_To_VNPT_TECH
    Open Browser      https://www.vnpt-technology.vn/vi      Edge      remote_url=http://10.2.9.116:9515

Login to ONE IoT
    Open Browser      http://10.15.12.227:9090/#/login      Edge      remote_url=http://10.2.9.116:9515
    Set Window Position   0   0
    Maximize Browser Window
     Sleep           5s
    Input Text    //*[@id="email"]    admin
     Sleep           5s
    Input Text    //*[@id="password"]    admin@123
     Sleep           5s
    Click Button    //*[@id="login_form"]/form/div[4]/button


