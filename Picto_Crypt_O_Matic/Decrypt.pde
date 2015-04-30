//Decryption code!

class Decrypt {

  String unmessage = "";
  String charCount = "";
  float unboxArea = 0; //(width*height) / message.length();
  float unboxS = 0; //sqrt(boxNum);
  float unboxX = 0; //boxH/2;
  float unboxY = 0; //boxH/2;
  int uncounter = 0;
  String uncode = "";
  Boolean run4 = false;
  PImage picin;


  // //Setup canvas
  void setupDecrypt() {
    size(400, 400);
    background(255);

    // Open code input window
    fill(142);
    rect(130, 97, 127, 40);
    text("Input Code", 139, 90 );
    fill(255);
    text(uncode, 139, 123);
    fill(142);
    rect(130, 187, 127, 40);
    text("Input Length", 132, 178);
    fill(255);
    text(charCount, 139, 214);
    rect(130, 300, 127, 25);
    fill(142);
    text("select file", 148, 320);
  }

  //Take inputs

  void takeCodes() {
    if (keyPressed && run4==false) {
      uncode += key;
      if (key == BACKSPACE) {
        uncode = uncode.substring(0, uncode.length()-1);
        if (uncode.length() > 0) {
          uncode = uncode.substring(0, uncode.length()-1);
        }
      }
    }
    if (keyPressed && keyCode == DOWN) {
      run4 = true;
      println("im here");
    }

    if (keyPressed && run4== true) {
      charCount += key;
      if (key == BACKSPACE) {
        charCount = charCount.substring(0, charCount.length()-1);
        if (charCount.length() > 0) {
          charCount = charCount.substring(0, charCount.length()-1);
        }
      }
    }
  }

  void selectFile() {
    
    
    if (mousePressed && 130<= mouseX && mouseX <= 257 && 300 <=mouseY && mouseY<= 325) {
    selectInput("Select a file to Import", "File Selected");   }


  }


      // }

      // void drawEncrypt() {


      //   //If message is blank, Stap.
      //   if ( message == null) { 
      //     noLoop();
      //   }


      //   //Begin Draw Setup

      //     float code = 0.2;
      //   // Loop scans through message
      //   while ( counter < message.length () ) {

      //     //println outputs the character that the scanner is at and the ascii value
      //     print(message.charAt(counter));
      //     print((int) message.charAt(counter) );
      //     //This line decides the fill of the rectangle based off of the character value and other factors
      //     fill((message.charAt(counter) * code), random(255), random(255));

      //     //Create rectangle
      //     if (boxX >= width-2) {
      //       boxY += boxS;
      //       boxX = 0;
      //     }

      //     //Shift loop to next character & rectangle
      //     stroke(#C2C6C4);
      //     strokeWeight(2);
      //     rect(boxX, boxY, boxS, boxS);
      //     boxX= boxX+boxS;  

      //     counter = counter+ 1;

      //     save("pyct.png");
      //   }
      // }
      //}
      ////
    }
