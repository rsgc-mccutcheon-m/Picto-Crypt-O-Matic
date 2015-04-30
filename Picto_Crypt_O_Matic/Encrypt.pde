//Mark McCutcheon March 31
//Picto-Crypt-O-Matic


//setup variables
class Encrypt {

  //BufferedReader reader;  
  float boxArea = 0; //(width*height) / message.length();
  float boxS = 0; //sqrt(boxNum);
  float boxX = 0; //boxH/2;
  float boxY = 0; //boxH/2;
  int counter = 0;
  float code = 0.2;


  //Setup canvas
  void setupEncrypt() {

    // reader = createReader("message.txt");

    // try {
    //   message = reader.readLine();
    // }

    // catch (IOException e) {     
    //   e.printStackTrace();
    //   message = null;
    // }


    //Ensure that message.length() is a square number by adding space.
    while (sqrt (message.length ()) % 1 != 0) { 
      message = message + " ";
    }


    //Recalculate boxArea based off of new message.length() value.
    boxArea = (width*height) / message.length();
    boxS = sqrt(boxArea);
    println(message.length());
  }

  void drawEncrypt() {


    //If message is blank, Stap.
    if ( message == null) { 
      noLoop();
    }


    //Begin Draw Setup


      // Loop scans through message
    while ( counter < message.length () ) {

      //println outputs the character that the scanner is at and the ascii value
      print(message.charAt(counter));
      print((int) message.charAt(counter) );
      //This line decides the fill of the rectangle based off of the character value and other factors
      fill((message.charAt(counter) * code), random(255), random(255));

      //Create rectangle
      if (boxX >= width-2) {
        boxY += boxS;
        boxX = 0;
      }

      //Shift loop to next character & rectangle
      stroke(#C2C6C4);
      strokeWeight(2);
      rect(boxX, boxY, boxS, boxS);
      boxX= boxX+boxS;  

      counter = counter+ 1;

      save("pyct.png");
    }
  }
}
