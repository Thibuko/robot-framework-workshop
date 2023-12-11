*** Settings ***
Documentation     A resource file containing keywords
Library           Browser


*** Keywords ***
Check Title
    [Documentation]    Check the title of the page
    [Arguments]    ${expected_title}
    Get Title    matches    ${expected_title}    # Get the title of the page and check it matches the expected title
