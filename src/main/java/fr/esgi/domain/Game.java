package fr.esgi.domain;

import java.util.Map;

public class Game {

    private Player playerOne;
    private Player playerTwo;
    private String score;
    private String winner;
    private Map<Integer,Point> points = Map.of(0,Point.LOVE,1,Point.FIFTEEN,2,Point.THIRTY,3,Point.FORTY,4,Point.FORTY);

    public Game(){
    }

    public Game(Player playerOne, Player playerTwo, String gameScore) {
        this.playerOne = playerOne;
        this.playerTwo = playerTwo;
        this.score = gameScore;
    }

    public Player getPlayerOne() {
        return playerOne;
    }

    public void setPlayerOne(Player playerOne) {
        this.playerOne = playerOne;
    }

    public Player getPlayerTwo() {
        return playerTwo;
    }

    public void setPlayerTwo(Player playerTwo) {
        this.playerTwo = playerTwo;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getWinner() {
        return winner;
    }

    public void setWinner(String winner) {
        this.winner = winner;
    }


    public String getGameScore(Player playerOne, Player playerTwo){

        if(playerOne.getScore() == 4 && playerTwo.getScore() < 3 ){
            return "WIN for "+playerOne.getName();
        }

        else if(playerTwo.getScore() == 4 && playerOne.getScore() < 3){
            return "WIN for "+playerTwo.getName();
        }

        else if(playerOne.getScore() == 6 && playerTwo.getScore() == 4){
            return "WIN for "+playerOne.getName();
        }

        else if(playerOne.getScore() == 4 && playerTwo.getScore() == 6){
            return "WIN for "+playerTwo.getName();
        }

        else {

            String playerOneScore = points.get(playerOne.getScore()).toString();
            String playerTwoScore = points.get(playerTwo.getScore()).toString();

            return playerOneScore == "FORTY" && playerOneScore == playerTwoScore ? "DEUCE" : playerOneScore + "-" + playerTwoScore;
        }
    }


}
