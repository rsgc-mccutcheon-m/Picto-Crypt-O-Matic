//Mark McCutcheon March 31
//Picto-Crypt-O-Matic

Encrypt encrypt;
Homescreen menu;
Input input;
boolean run1= false;
boolean run2= false;

//Setup canvas
void setup() {

  //call variables
  encrypt = new Encrypt();
  menu = new Homescreen();
  input = new Input();
  // Create canvas

  menu.setupMenu();
}
void draw() {
  if (mousePressed && 50<=mouseX && mouseX<=150 && 150<=mouseY && mouseY<=200) {
    run1=true;
    encrypt.setupEncrypt();
    
  }

  if (run1 == true) {
    encrypt.drawEncrypt();
  }

  if (mousePressed && 250<=mouseX && mouseX<=300 && 150<=mouseY && mouseY<=200) {
    input.setupInput();
  }
}
