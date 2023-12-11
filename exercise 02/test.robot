*** Settings ***
Documentation     This is a simple test case to open Robot Framwrok in Chromium
Library    Browser    # Import the Browser library https://robotframework-browser.org/


*** Test Cases ***
Open Google in Chromium
    [Documentation]    Open Google in Chromium
    New Browser    chromium    headless=false    # Open a new browser
    New Page    https://robotframework.org/   # Open a new page
    Get Title    matches    Robot Framework    # Get the title of the page
    Close Browser    All    # Close all open browsers
