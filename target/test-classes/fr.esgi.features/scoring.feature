Feature: Tennis game

  Scenario: Start a new game
    Given : A new game has been started
    When : "Sonia" and "Inas" start to play
    And : No points have been scored
    Then : "Sonia" score should be 0
    And : "Inas" Score should be 0
    And : The initial game score should be "LOVE-LOVE"


  Scenario: Both players score one point
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 1 point
    And : second player "Inas" scores 1 point
    Then : The game score should be "FIFTEEN-FIFTEEN"


  Scenario: Both players score two points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 2 point
    And : second player "Inas" scores 2 point
    Then : The game score should be "THIRTY-THIRTY"

  Scenario: Both players score three points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 3 point
    And : second player "Inas" scores 3 point
    Then : The game score should be "DEUCE"

  Scenario: Both players score four points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 4 point
    And : second player "Inas" scores 4 point
    Then : The game score should be "DEUCE"

  Scenario: second player scores one point
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 0 point
    And : second player "Inas" scores 1 point
    Then : The game score should be "LOVE-FIFTEEN"

  Scenario: second player scores two points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 0 point
    And : second player "Inas" scores 2 point
    Then : The game score should be "LOVE-THIRTY"

  Scenario: second players scores three points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 0 point
    And : second player "Inas" scores 3 point
    Then : The game score should be "LOVE-FORTY"

  # win
  Scenario: first player scores 0 point and second player scores 4 points | Winner is the second player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 0 point
    And : second player "Inas" scores 4 point
    Then : The game score should be "WIN for Inas"

  Scenario: first player scores one points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 1 point
    And : second player "Inas" scores 0 point
    Then : The game score should be "FIFTEEN-LOVE"

  Scenario: first player scores two points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 2 point
    And : second player "Inas" scores 0 point
    Then : The game score should be "THIRTY-LOVE"

  Scenario: first player scores three points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 3 point
    And : second player "Inas" scores 0 point
    Then : The game score should be "FORTY-LOVE"

  # win
 Scenario: first player scores 0 point and second player scores 4 points | Winner is the first player
   Given : "Sonia" and "Inas" play together
   When : first player "Sonia" scores 4 point
   And : second player "Inas" scores 0 point
   Then : The game score should be "WIN for Sonia"


  # player 1 ----------------

  Scenario: first player scores 1 point and second player scores 2 points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 1 point
    And : second player "Inas" scores 2 point
    Then : The game score should be "FIFTEEN-THIRTY"

  Scenario: first player scores 1 point and second player scores 3 points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 1 point
    And : second player "Inas" scores 3 point
    Then : The game score should be "FIFTEEN-FORTY"

    # win
  Scenario: first player scores 1 point and second player scores 4 points | Winner is the second player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 1 point
    And : second player "Inas" scores 4 point
    Then : The game score should be "WIN for Inas"


  Scenario: first player scores 2 point and second player scores 3 points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 2 point
    And : second player "Inas" scores 3 point
    Then : The game score should be "THIRTY-FORTY"

    # win

  Scenario: first player scores 2 point and second player scores 4 points | Winner is the second player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 2 point
    And : second player "Inas" scores 4 point
    Then : The game score should be "WIN for Inas"

#  Scenario: first player scores 3 point and second player scores 4 points
#    Given : "Sonia" and "Inas" play together
#    When : first player "Sonia" scores 3 point
#    And : second player "Inas" scores 4 point
#    Then : The game score should be "FORTY-FORTY"


  # player 2 ----------------

  Scenario: first player scores 2 point and second player scores 1 points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 2 point
    And : second player "Inas" scores 1 point
    Then : The game score should be "THIRTY-FIFTEEN"

  Scenario: first player scores 3 point and second player scores 1 points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 3 point
    And : second player "Inas" scores 1 point
    Then : The game score should be "FORTY-FIFTEEN"

    # win
  Scenario: first player scores 4 point and second player scores 1 points | Winner is the first player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 4 point
    And : second player "Inas" scores 1 point
    Then : The game score should be "WIN for Sonia"

  Scenario: first player scores 3 point and second player scores 2 points
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 3 point
    And : second player "Inas" scores 2 point
    Then : The game score should be "FORTY-THIRTY"

  # win
  Scenario: first player scores 4 point and second player scores 2 points | Winner is the first player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 4 point
    And : second player "Inas" scores 2 point
    Then : The game score should be "WIN for Sonia"

#  Scenario: first player scores 4 point and second player scores 3 points
#    Given : "Sonia" and "Inas" play together
#    When : first player "Sonia" scores 3 point
#    And : second player "Inas" scores 4 point
#    Then : The game score should be "FORTY-FORTY"

    # win
  Scenario: first player scores 4 point and second player scores 6 points | Winner is the second player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 4 point
    And : second player "Inas" scores 6 point
    Then : The game score should be "WIN for Inas"


      # win
  Scenario: first player scores 6 point and second player scores 4 points | Winner is the first player
    Given : "Sonia" and "Inas" play together
    When : first player "Sonia" scores 6 point
    And : second player "Inas" scores 4 point
    Then : The game score should be "WIN for Sonia"









