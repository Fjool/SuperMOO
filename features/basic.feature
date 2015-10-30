Feature: Get a basic interface
  Player should be able to view a basic interface

  Scenario:
    Given I am at the main page
    Then I should see a welcome message

  Scenario:
    Given I am at the main page
    Then I should see the world output

  Scenario:
    Given I am at the main page
      And I have initialised the world    
      And I have a player called "Horace"
     Then I should see the message "Welcome, Horace!"
