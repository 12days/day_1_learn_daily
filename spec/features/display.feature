Feature: displays random wiki page

  In order to facilitate the learning of the user we will display a summary of a random wiki page, no longer than 100 words

  Scenario: article is shown
    When I load the page
    Then I should see text no longer than 100 words


