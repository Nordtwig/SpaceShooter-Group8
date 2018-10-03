void findHighScore1() {
  int highestNumber = scoreTable.getInt(0, "score");
  String highestPlayer = scoreTable.getString(0, "name");
  for (TableRow row : scoreTable.rows()) {
    int number = row.getInt("score");
    String name = row.getString("name");
    if (number >= highestNumber) {
      highestNumber = number;
      highestPlayer = name;
    }
    highScore1Name = highestPlayer;
    highScore1 = highestNumber;
  }
}

void findHighScore2() {
  int secondHighest = scoreTable.getInt(0, "score");
  String secondPlayer = scoreTable.getString(0, "name");
  for (TableRow row : scoreTable.rows()) {
    int number = row.getInt("score");
    String name = row.getString("name");
    if (number >= secondHighest && name != highScore1Name) {
      secondHighest = number;
      secondPlayer = name;
    }
    highScore2Name = secondPlayer;
    highScore2 = secondHighest;
  }
}

void findHighScore3() {
  int thirdHighest = scoreTable.getInt(0, "score");
  String thirdPlayer = scoreTable.getString(0, "name");
  for (TableRow row : scoreTable.rows()) {
    int number = row.getInt("score");
    String name = row.getString("name");
    if (number >= thirdHighest && name != highScore1Name && name != highScore2Name) {
      thirdHighest = number;
      thirdPlayer = name;
    }
    highScore3Name = thirdPlayer;
    highScore3 = thirdHighest;
  }
}
