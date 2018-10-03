class NamePrompt {
  String name;
  char letter;
  int x, y;

  public NamePrompt (int xPos, int yPos) {
    name = "";
    x = xPos;
    y = yPos;
  }

  void show() {
    fill(200, 0, 0);
    text(name, x, y);
  }

  void keyListener(char keyInput, int code) {
    key = keyInput;
    if ((key >= 'A' && key <= 'z') || key >= '0' && key <= '9') {
      letter = key;
      name += key;
    }
    else if (code == BACKSPACE && name.length() > 0) {
      name = name.substring(0, name.length()-1);
    }
    else if (code == ENTER) {
      if (name == "") {
        name = "randomGuy";
      }
      scoreKeeper.println(name + ": " + score);
      resetGame();
    }
  }
}
