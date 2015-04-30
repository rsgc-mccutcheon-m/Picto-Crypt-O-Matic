//Mark McCutcheon March 31
//Picto-Crypt-O-Matic

Encrypt encrypt;
Homescreen menu;
Input input;
Decrypt decrypt;
boolean run1= false;
boolean run2= false;
int counter = 0;
//Setup canvas
void setup() {

  //call variables
  encrypt = new Encrypt();
  menu = new Homescreen();
  input = new Input();
  decrypt = new Decrypt();
  // Create canvas

  menu.setupMenu();
}
void draw() {
  if (mousePressed && 50<=mouseX && mouseX<=150 && 150<=mouseY && mouseY<=200) {
    run1=true;
  }

  if (run1 == true) {
    input.setupInput();
    input.keyPressed();

    if (keyCode == ENTER) {
      encrypt.setupEncrypt();
      encrypt.drawEncrypt();
    }
  }

  if (mousePressed && 250<=mouseX && mouseX<=300 && 150<=mouseY && mouseY<=200) {
    run2= true;
  }

  if (run2==true) {
  }
}
