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
int counter = 1;
//Setup canvas
void setup() {

  // Create canvas
  size(400, 400);
  
    // Image will not animate
  noLoop();

  // Start saving to the PDF file
  beginRecord(PDF, "output.pdf");

}

//Scan Text input


//Setup Variables

//Encrypt colour selection

//Generate image

//Output to image file.

