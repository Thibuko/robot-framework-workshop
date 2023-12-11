*** Settings ***
Documentation     This is a resource file that contains steps for amazon test suite

Resource          ../actions/amazon_actions.resource


*** Keywords ***
I have an opened page on amazon
    [Documentation]     This keyword opens the amazon page
    Go to amazon page
    Check amazon page is loaded

I search for ${item}
    [Documentation]     This keyword searches for playmobil set 9463
    Search for item    ${item}

I should see playmobil set ${item} in the results
    [Documentation]     This keyword checks if playmobil 9463 is in search result
    Check if item is in search result    ${item}
