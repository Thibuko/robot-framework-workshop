*** Settings ***
Documentation     Resource file containing all common steps

Resource          ../../data/variables/variables.resource
Resource          ../actions/common_actions.resource


*** Keywords ***
Start suite
    [Documentation]     Start test suite
    Open new browser

End suite
    [Documentation]     End test suite
    Close opened browsers

Start test
    [Documentation]     Start test
    Open new page on ${URL}

End test
    [Documentation]     End test
    Close opened page
