//Input tab
class Input {

  //Create done message key (enter)

  //Setup input screen   
  void setupInput() { 
      background(255); 
      fill(0);
      textSize(20);
      fill(#D0A2FA);
      text("Type message  press Enter to encrypt", 4, 20);
      text(message, 0, 60);
      text(message.length(), 370, 390); 
       textSize(10);
       text("Remember the square number higher but closest to your message length!!", 4, 370);

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
