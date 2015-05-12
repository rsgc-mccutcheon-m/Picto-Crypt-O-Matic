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
  boolean searching = false;
  Boolean codeIn = false;
  Boolean lengthIn = false;
  PImage picIn;


  // //Setup canvas
  void setupDecrypt() {
    size(400, 400);
    background(255);
    textSize(20);

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
    if (mouseX >=  130 && mouseY >= 97 && mouseX <= 257 && mouseY <= 137 ) {
      codeIn = true;
      println("taterz");
    } else { 
      codeIn = false; }

    if (keyPressed && codeIn== true) {
      uncode += key;

      if (key == BACKSPACE) {
        uncode = uncode.substring(0, uncode.length()-1);
        if (uncode.length() > 0) {
          uncode = uncode.substring(0, uncode.length()-1);
        }
      }
    }


    if (mouseX >= 130 && mouseX <= 257 && mouseY >= 187 && mouseY <=227) { 
      lengthIn = true;
    } else {
     lengthIn = false; 
    }



    if (keyPressed && lengthIn == true) {
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


    if (searching == false&&mousePressed && 130<= mouseX && mouseX <= 257 && 300 <=mouseY && mouseY<= 325) {
      searching = true;
      selectInput("Select a file to Import", "processFile");
    }
  }

  

}
