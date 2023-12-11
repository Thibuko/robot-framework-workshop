*** Settings ***
Documentation     Resource file conatining all common steps
Library           Browser


*** Keywords ***
Open new browser
    [Documentation]    Open new browser
    New Browser    chromium    headless=false

Close opened browsers
    [Documentation]    Close browser
    Close Browser    All

Open new page on ${URL}
    [Documentation]    Open new page on ${URL}
    New context
    New Page    ${URL}

Close opened page
    [Documentation]    Close page
    Close Page
    Close Context
