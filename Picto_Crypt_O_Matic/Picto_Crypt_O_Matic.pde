//Mark McCutcheon March 31
//Picto-Crypt-O-Matic
import processing.pdf.*;

String message = "Top Secret";
String index = "abcdefghijklmnopqrstuvwxyz";

float boxNum = 0; //(width*height) / message.length();
float boxH = 0; //sqrt(boxNum);
float boxX = 0; //boxH/2;
float boxY = 0; //boxH/2;
int counter = 0;
float code = sq(counter)+(2*counter)+0;
//Setup canvas
void setup() {

  // Create canvas
  size(400, 400);
  float w = width;
  float h = height;
  boxNum = (w*h) / message.length();
  boxH = sqrt(boxNum);
  boxX = 0;
  boxY = 0;

  // Start saving to the PDF file
  beginRecord(PDF, "output.pdf");
}


void draw() {

  float code = sq(counter)+(2*counter)+0;
  // Loop scans through message
  while ( counter < message.length () ) {

    //println outputs the character that the scanner is at and the ascii value
    print(message.charAt(counter));
    print((int) message.charAt(counter) );
    //This line decides the fill of the rectangle based off of the character value and other factors
    //fill((message.charAt(counter) * (code*counter)), (message.charAt(counter) * (code/counter)), (message.charAt(counter) * (code)));
    fill((message.charAt(counter) * code), random(255), random(255));

    //Create rectangle
    rect(boxX, boxY, boxH, boxH);

    //Shift loop to next character & rectangle
    boxX= boxX+boxH;
    counter = counter+ 1;
  }
}
