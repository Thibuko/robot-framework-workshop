*** Settings ***
Documentation     This is a simple test case to open Robot Framwrok in Chromium
Library    Browser    # Import the Browser library https://robotframework-browser.org/


*** Variables ***
${URL}    https://robotframework.org/


*** Test Cases ***
Open Google in Chromium
    [Documentation]    Open Google in Chromium
    New Browser    chromium    headless=false    # Open a new browser
    New Page    ${URL}   # Open a new page
    Check Title    Robot Framework    # Check the title of the page
    Close Browser    All    # Close all open browsers


*** Keywords ***
Check Title
    [Documentation]    Check the title of the page
    [Arguments]    ${expected_title}
    Get Title    matches    ${expected_title}    # Get the title of the page and check it matches the expected title
