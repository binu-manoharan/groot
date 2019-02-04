Feature: Search on Google
  Everybody wants to search on Google

  Scenario: Search for cactus flower pictures
    Given I am on Google homepage
    When I search for cactus flower
    And I click on images
    Then I should be shown images of cactus flowers