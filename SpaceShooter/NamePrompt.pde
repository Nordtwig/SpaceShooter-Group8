class NamePrompt {
  String name;
  char letter;

  public NamePrompt () {
    name = "";
  }

  void show() {
    fill(128);
    text(name, 400, 400);
  }

  void keyListener(char keyInput, int code) {
    key = keyInput;
    if ((key >= 'A' && key <= 'z') || key >= '0' && key <= '9') {
      letter = key;
      name += key;
    }
    else if (code == BACKSPACE) {
      name = name.substring(0, name.length()-1);
    }
  }
}
