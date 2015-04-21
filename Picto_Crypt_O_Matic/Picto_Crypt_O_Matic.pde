//Mark McCutcheon March 31
//Picto-Crypt-O-Matic


//setup variables


String message = "Brendan is the man. The original G. Occasionally reffered to as god";
String index = "abcdefghijklmnopqrstuvwxyz";

float boxArea = 0; //(width*height) / message.length();
float boxS = 0; //sqrt(boxNum);
float boxX = 0; //boxH/2;
float boxY = 0; //boxH/2;
int counter = 0;
float code = sq(counter)+(2*counter)+0;


//Setup canvas
void setup() {

  // Create canvas
  size(400, 400);

  //Ensure that message.length() is a square number by adding space.
  while (sqrt (message.length ()) % 1 != 0) { 
    message = message + " ";
  }

  //Recalculate boxArea based off of new message.length() value.
  boxArea = (width*height) / message.length();
  boxS = sqrt(boxArea);
  boxX = 0;
  boxY = 0;
  println(message.length());
}

//Begin Draw Setup
void draw() {

  float code = 0.2;
  // Loop scans through message
  while ( counter < message.length () ) {

    //println outputs the character that the scanner is at and the ascii value
    print(message.charAt(counter));
    print((int) message.charAt(counter) );
    //This line decides the fill of the rectangle based off of the character value and other factors
    //fill((message.charAt(counter) * (code*counter)), (message.charAt(counter) * (code/counter)), (message.charAt(counter) * (code)));
    fill((message.charAt(counter) * code), random(255), random(255));

    //Create rectangle
    if (boxX >= width-1) {
      boxY += boxS;
      boxX = 0;
    }
    //Shift loop to next character & rectangle
    rect(boxX, boxY, boxS, boxS);
    boxX= boxX+boxS;  

    counter = counter+ 1;
    
     save("pyct.png");
  }
}
