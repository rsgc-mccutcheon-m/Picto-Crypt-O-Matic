//Input tab
class Input {

  //input desired Encryption
  void setupTakecode() {
    background(255);


    fill(142);
    text("Input desired code", 117, 130);
    rect( 140, 145, 130, 40);

    fill(255);
    text(code, 168, 172);

    fill(142);
    rect(133, 230, 151, 40);
    fill(255);
    text("Input Message", 138, 257);
    if (mouseX >= 140 && mouseX <= 270 && mouseY >= 145 && mouseY <= 185) {
      Encode = true;
    } else { 
      Encode = false;
    }

    if (mousePressed && mouseX>=133 && mouseX<=284 && mouseY>=230 && mouseY<=270) {
      runInput = true;
    } else { 
    }
  }

  void inputCode() {
    if (keyPressed && Encode== true) {
      // get the value of the key pressed
      code += int(key);  // int('0') = 48
      code = (code - 48)/10;
      if (code>= 0 && code <= 9) {
        println("Valid digit: " + code);
      } else {
        println("Invalid you pressed " + key);
      }

      // if (key == BACKSPACE) {
      //   codein = codein.sub(0, codein.length()-1);
      //   if (codein.length() > 0) {
      //     codein = codein.substring(0, codein.length()-1);
      //   }
      // }
    }
  }






  //Setup input screen   

  void setupInput() { 
   
    background(255); 
    fill(0);
    textSize(20);
    fill(#D0A2FA);
    text("Type message  press Enter to encrypt", 4, 20);
    text(message, 0, 60, 400, 400);
    text(message.length(), 350, 390); 
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
