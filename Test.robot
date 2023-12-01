*** Settings ***
Library                 SeleniumLibrary         WITH NAME                   SL
Library           RequestsLibrary

*** Keywords ***
Open_Browser_To_VNPT_TECH
    Open Browser      https://www.vnpt-technology.vn/vi      Edge      remote_url=http://10.2.9.116:9515

Login to ONE IoT
    Open Browser      http://10.15.12.227:9090/#/login      Edge      remote_url=http://10.2.9.116:9515
    Maximize Browser Window
    Input Text    //*[@id="email"]    admin
    Input Text    //*[@id="password"]    admin@123
    Click Button    //*[@id="login_form"]/form/div[4]/button
    Sleep           2s   # Đợi trang web xử lý đăng nhập
    ${status_code} =    Get Request    http://10.15.12.227:9090/api/auth/token
    Should Be Equal As Numbers    ${status_code}    200
