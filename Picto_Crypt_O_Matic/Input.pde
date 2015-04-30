//Input tab
class Input {

  //Create done message key (enter)


  //Setup input screen   
  void setupInput() { 
      background(255); 
      fill(0);
      text(message, 0, 20);

  }


  void keyPressedI() {
    message += key;
    if (key == BACKSPACE) {
      message = message.substring(0, message.length()-1);
     if (message.length() > 0) {
        message = message.substring(0, message.length()-1);
      }
    }
  }
}
