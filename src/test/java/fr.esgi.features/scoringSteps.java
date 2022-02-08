package fr.esgi.features;

import fr.esgi.domain.Game;
import fr.esgi.domain.Player;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.Assertions;


public class scoringSteps {

    private Game game;
    private Player playerOne;
    private Player playerTwo;

    // new game

    @Given(": A new game has been started")
    public void aNewGameHasBeenStarted() {
         game = new Game();
    }

    @When(": {string} and {string} start to play")
    public void startToPlay(String playerOneName, String playerTwoName) {
         playerOne = new Player(playerOneName,0);
         playerTwo = new Player(playerTwoName,0);
         game = new Game(playerOne,playerTwo,"LOVE-LOVE");
    }

    @And(": No points have been scored")
    public void noPointsHaveBeenScored() {
    }


    @Then(": {string} score should be {int}")
    public void scoreOfPlayerOneShouldBeZero(String playerOneName, int playerScore) {
        Assertions.assertThat(playerOne.getScore()).isEqualTo(playerScore);
    }

    @And(": {string} Score should be {int}")
    public void scoreOfPlayerTwoShouldBeZero(String playerTwoName, int playerScore) {
        Assertions.assertThat(playerTwo.getScore()).isEqualTo(playerScore);
    }

    @And(": The initial game score should be {string}")
    public void theInitialGameScoreShouldBe(String gameScore) {
        Assertions.assertThat(game.getScore()).isEqualTo(gameScore);
    }

    // scoring

    @Given(": {string} and {string} play together")
    public void playTogether(String playerOneName, String playerTwoName) {
        playerOne = new Player(playerOneName,0);
        playerTwo = new Player(playerTwoName,0);
        game = new Game(playerOne,playerTwo,"LOVE-LOVE");
    }

    @When(": first player {string} scores {int} point")
    public void firstPlayerScore(String player, int score) {
        playerOne.setScore(score);
    }

    @And(": second player {string} scores {int} point")
    public void secondPlayerScore(String player, int score) {
        playerTwo.setScore(score);
    }


    @Then(": The game score should be {string}")
    public void theGameScoreShouldBe(String gameScore) {
        Assertions.assertThat(game.getGameScore(playerOne,playerTwo)).isEqualTo(gameScore);
    }


    // winner





}
