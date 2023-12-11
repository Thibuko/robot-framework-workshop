*** Settings ***
Documentation     A test suite to find playmobil set on amazon

Resource          ../resources/steps/common_steps.resource
Resource          ../resources/steps/amazon_steps.resource

Suite Setup       Start suite
Suite Teardown    End suite
Test Setup        Start test
Test Teardown     End test


*** Test Cases ***
Find Playmobil set 9463
    [Documentation]    Find Playmobil set 9463 price on amazon
    Given I have an opened page on Amazon
    When I search for playmobil set 9463
    Then I should see playmobil set 9463 in the results

Find Playmobil set 70677
    [Documentation]    Find Playmobil set 9463 price on amazon
    Given I have an opened page on Amazon
    When I search for playmobil set 70677
    Then I should see playmobil set 70677 in the results
