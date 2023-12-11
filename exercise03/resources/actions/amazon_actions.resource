*** Settings ***
Documentation    This is a resource file containing steps for amazon suite
Library   Browser

Resource    ../../data/variables/variables.resource
Resource    ../../data/locators/locators.resource


*** Keywords ***
Go to amazon page
    [Documentation]    Open the Amazon page
    Go To    ${URL}

Check amazon page is loaded
    [Documentation]    Check the amazon page is loaded
    Get Title    ==    ${PAGE_TITLE}

Search for item
    [Documentation]    Search for item
    [Arguments]    ${item}
    Fill Text    id=${SEARCH_BOX}    ${item}
    Click    id=${SEARCH_BUTTON}

Check if item is in search result
    [Documentation]    Check if item is in search result
    [Arguments]    ${item}
    Wait For Elements State    ${SEARCH_RESULT}    state=visible
    ${result} =    Get Text    ${SEARCH_RESULT}
    Should Contain    ${result}    ${item}
