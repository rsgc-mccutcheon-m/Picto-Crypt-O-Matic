//Input tab

class Input {


   Boolean run3 = false;
  void setupInput() { 
    String message = "";
    Boolean run3 = false;
    while( run3== false) {
      background(255); 
      fill(0);
      text(message, 0, 10);
    }
    if (keyCode == ENTER) {
      run3 = true;
    }
    }
 

  void keyPressed() {
    String message = "";
    message += key;
    if (keyCode == SHIFT) {
      message = message.substring(0, message.length()-1);
    }
    if (key == BACKSPACE) {
      message = message.substring(0, message.length()-1);
      if (message.length() > 0) {
        message = message.substring(0, message.length()-1);
      }
    }
  }
}
