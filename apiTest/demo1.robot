*** Settings ***
Documentation  http请求
Library  RequestsLibrary
Library  Collections

*** Variables ***
#定义全局变量
${host}  https://www.91wangcai.com


#未封装请求
#*** Test Cases ***
#get请求
#    [Tags]      Get
#    ${data}     create dictionary       request_date=2020-9-29   _=1601345910725
#    ${headers}   create dictionary       Referer=https://www.91wangcai.com/?reportData   User-Agent=Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36   Cookie=_ga=GA1.2.264899618.1557404415; __jsluid_h=b7cdfaf3fcbcc2f60fa7e29fe60cf27b; __jsluid_s=5a8545e87898aac2f8bf7e716134dbeb; BUID=wKgA7F9jMnUWjTpFAwRuAg==; JSESSIONID=D666918A98205EA64D83149FB4E2108D; Hm_lvt_a5e066626801308aabc261e863bc5ff2=1600336844,1601345799; _gid=GA1.2.913176871.1601345799; VISIT_SOURCE=pc; VISIT_APP_NAME=wangcai; name=EX; _gat=1; Hm_lvt_8db064996a75a4788e09f230eb46ca82=1601345907; Hm_lpvt_8db064996a75a4788e09f230eb46ca82=1601345907; Hm_lpvt_a5e066626801308aabc261e863bc5ff2=1601345907
#    create session      91wangcai    ${host}    headers=${headers}
#    ${response}     get request    91wangcai   /operate_report   params=${data}
#    should be equal as integers  ${response.status_code}    200
#    ${resp}     to json     ${response.content}
#    should not be empty  ${resp["data"]}

#    dictionary should contain key  ${resp["header"]}        Host
#    dictionary should contain value  ${resp["headers"]}     www.91wangcai.com



#简单封装--------------------------------------------------------------------
#*** Test Cases ***
#Package Post
#    [Tags]      packaged req
#    ${data}     create dictionary   request_date=2020-9-29   _=1601345910725
#    ${headers}   create dictionary       Referer=https://www.91wangcai.com/?reportData   User-Agent=Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36   Cookie=_ga=GA1.2.264899618.1557404415; __jsluid_h=b7cdfaf3fcbcc2f60fa7e29fe60cf27b; __jsluid_s=5a8545e87898aac2f8bf7e716134dbeb; BUID=wKgA7F9jMnUWjTpFAwRuAg==; JSESSIONID=D666918A98205EA64D83149FB4E2108D; Hm_lvt_a5e066626801308aabc261e863bc5ff2=1600336844,1601345799; _gid=GA1.2.913176871.1601345799; VISIT_SOURCE=pc; VISIT_APP_NAME=wangcai; name=EX; _gat=1; Hm_lvt_8db064996a75a4788e09f230eb46ca82=1601345907; Hm_lpvt_8db064996a75a4788e09f230eb46ca82=1601345907; Hm_lpvt_a5e066626801308aabc261e863bc5ff2=1601345907
#    ${resp}     GET req    ${data}     ${headers}
#
#
#*** Keywords ***
#GET req
#    [Arguments]     ${data}     ${header}
#    create session      api     ${host}     ${header}
#    ${response}     get request     api     /operate_report    params=${data}
#    should be equal as integers  ${response.status_code}    200
#    ${resp}     to json  ${response.content}
#    [Return]  ${resp}
#简单封装--------------------------------------------------------------------


