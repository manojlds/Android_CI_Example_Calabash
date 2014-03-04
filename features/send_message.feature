Feature: As I write a new message this message should be sent to display on the DisplayMessage Activity screen.

  Scenario: I write a message and see it display
    Given I am on the home screen
    When I enter "Team City Android" as message
    Then I should see message "Team City Android"