//Mark McCutcheon March 31
//Picto-Crypt-O-Matic
import processing.pdf.*;

String message = "top secret";
String index = "abcdefghijklmnopqrstuvwxyz";
int code = 25;
float boxNum = (width*height) / message.length();
float boxH = sqrt(boxNum);
float boxX = boxH/2;
float boxY = boxH/2;
int counter = 0;
//Setup canvas
void setup() {

  // Create canvas
  size(400, 400);

  // Image will not animate


  // Start saving to the PDF file
  beginRecord(PDF, "output.pdf");

  // example of how to access individual characters
  while ( counter < message.length()) {
  //println(message.charAt(counter));
  
  
  counter = counter+ 1;
  }
}

//Scan Text input (testing at the moment)
//if (message. (counter) == index.charAt(1)) { 
//  fill(1*code);
//}
//
//rect(boxX,boxY,boxH,boxH);

//Setup Variables

//Encrypt colour selection

//Generate image

//Output to image file.
