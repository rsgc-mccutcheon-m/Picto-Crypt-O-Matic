//Mark McCutcheon April 30th 2015
//Picto-Crypt-O-Matic

Encrypt encrypt;
Homescreen menu;
Input input;
Decrypt decrypt;
boolean run1= false;
boolean run2= false;
boolean run3= false;
String message = "";
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
    if (run3 == false) {
      input.setupInput();
    }
    if (run3 == true) {
      encrypt.drawEncrypt();
    }

    if (keyPressed && key==ENTER) {
      if (run3== false) {
        encrypt.setupEncrypt();
        encrypt.drawEncrypt();
        run3=true;
      }
    }
  }


  if (mousePressed && 250<=mouseX && mouseX<=300 && 150<=mouseY && mouseY<=200) {
    run2 = true;
  }

  if (run2==true) {
    decrypt.setupDecrypt();
    decrypt.selectFile();
    
   
  }
}

void keyPressed() {
  if (run2==true) {
    decrypt.takeCodes();
  }
  if (run3== false) {
    input.keyPressedI();
  }
}
