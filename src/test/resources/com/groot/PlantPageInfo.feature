Feature: As a user I want to see different information for a plant species.
  This includes the plant name, description, natural habitat, hardiness, growing locations,
  care info and images of the plant.
  As a user if information is not available for a section then it is expected to show N/A
  for that section, except for the plant name which is mandatory

  Scenario Outline: Read the name of the plant
    Given I am on the plant page for "<plantName>"
    When I look for the "<plantName>" of the plant
    Then I should see the "<plantName>"

    Examples:
      | plantName            |
      | Echeveria purpusorum |
      | Haworthia limifolia  |

  Scenario: The plant has a description
    Given I am on the plant page for 'Echeveria purpusorum'
    When I look for the description of the plant
    Then I should see the title 'Description'
      And there should be some text
      And the text is not 'N/A'

  Scenario: The plant has no description
    Given I am on the plant page for 'Haworthia limifolia'
    When I look for the description of the plant
    Then I should see the title 'Description'
      And the only text is 'N/A'

  Scenario: The plant has a natural habitat listed
    Given I am on the plant page for 'Echeveria purpusorum'
    When I look for the natural habitat of the plant
    Then I should see the title 'Natural Habitat'
      And there should be some text
      And the text is not 'N/A'

  Scenario: The plant has no natural habitat listed
    Given I am on the plant page for 'Haworthia limifolia'
    When I look for the natural habitat of the plant
    Then I should see the title 'Natural Habitat'
      And the only text is 'N/A'

  Scenario: The plant has a hardiness listed
    Given I am on the plant page for 'Echeveria purpusorum'
    When I look for the hardiness of the plant
    Then I should see the title 'Hardiness'
      And there should be some text
      And the text is not 'N/A'

  Scenario: The plant has no hardiness listed
    Given I am on the plant page for 'Haworthia limifolia'
    When I look for the hardiness of the plant
    Then I should see the title 'Hardiness'
      And the only text is 'N/A'

  Scenario: The plant has a growing locations listed
    Given I am on the plant page for 'Echeveria purpusorum'
    When I look for the growing locations of the plant
    Then I should see the title 'Growing Location'
      And there should be some text
      And the text is not 'N/A'

  Scenario: The plant has no growing locations listed
    Given I am on the plant page for 'Haworthia limifolia'
    When I look for the growing locations of the plant
    Then I should see the title 'Growing Location'
      And the only text is 'N/A'

  Scenario: The plant has care information
    Given I am on the plant page for 'Echeveria purpusorum'
    When I look for the care information of the plant
    Then I should see the title 'Care Information'
      And there should be some text
      And the text is not 'N/A'

  Scenario: The plant has no care information
    Given I am on the plant page for 'Haworthia limifolia'
    When I look for the care information of the plant
    Then I should see the title 'Care Information'
      And the only text is 'N/A'

  Scenario: The plant has images
    Given I am on the plant page for 'Echeveria purpusorum'
    When I look for images of the plant
    Then I should see the title 'Images'
      And there should be at least 1 image shown
      And there is no text shown in this section

  Scenario: The plant has no images
    Given I am on the plant page for 'Haworthia limifolia'
    When I look for the care information of the plant
    Then I should see the title 'Care Information'
      And the only text is 'N/A'
      And there are no images in this section
