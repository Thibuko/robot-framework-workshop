*** Settings ***
Documentation     This is a simple test case to open Robot Framwrok in Chromium
Library    Browser    # Import the Browser library https://robotframework-browser.org/

Resource    ./variables.resource    # Import the variables file
Resource    ./keywords.resource    # Import the keywords file


*** Test Cases ***
Open Google in Chromium
    [Documentation]    Open Google in Chromium
    New Browser    chromium    headless=false    # Open a new browser
    New Page    ${URL}   # Open a new page
    Check Title    Robot Framework    # Check the title of the page
    Close Browser    All    # Close all open browsers
