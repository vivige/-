#导入第三方库
*** Settings ***
#配置项区域，用于导入第三方库、设置套件的初始化与清除
#library  声明使用第三方库
Library  SeleniumLibrary

*** Test Cases ***
搜索功能测试
#打开浏览器，并导航到指定网址，可以是chrome，firefox，ie
    open browser    https://www.mi.com/   chrome
    set selenium implicit wait   10
    #搜索框输入关键字，小米10\n表示输入小米后回车
    input text  id=search   小米10\n
    #获取搜索结果文本，验证搜索结果是否包含搜索内容
    ${res}  get text    css=.goods-list-box
    #断言，验证结果是否包含
    should contain  ${res}  小米10
    close browser
