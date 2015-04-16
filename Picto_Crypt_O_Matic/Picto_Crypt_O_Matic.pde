//Mark McCutcheon March 31
//Picto-Crypt-O-Matic
import processing.pdf.*;

String message = "top secret";
String index = "abcdefghijklmnopqrstuvwxyz";
float code = 0.9;
float boxNum = (width*height) / message.length();
float boxH = 30; //sqrt(boxNum);
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
}


void draw() {
  // example of how to access individual characters
  while ( counter < message.length () ) {
    //println(message.charAt(counter));
    println((message.charAt(counter)) * code);
    fill((message.charAt(counter) * (code*counter)), (message.charAt(counter) * (code/counter)), (message.charAt(counter) * (code)));
    rect(boxX, boxY, boxH, boxH);
    boxX= boxX+boxH;
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
