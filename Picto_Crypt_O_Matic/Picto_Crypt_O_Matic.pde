//Mark McCutcheon April 30th 2015
//Picto-Crypt-O-Matic

Encrypt encrypt;
Homescreen menu;
Input input;
Decrypt decrypt;
boolean run1= false;
boolean run2= false;
boolean run3= false;
boolean Encode= false;
boolean runInput = false;
String message = "";
int counter = 0;
float code;
float codein;
import javax.imageio.*;
import java.awt.image.*;
BufferedImage image;
Boolean imageloaded = false;
PImage picIn;
//Setup canvas
void setup() {

  //call variables
  encrypt = new Encrypt();
  menu = new Homescreen();
  input = new Input();
  decrypt = new Decrypt();
  // Create canvas

  menu.setupMenu();
   if (picIn != null) {
    image(picIn, 0,0);
  }
}
void draw() {
  if (mousePressed && 50<=mouseX && mouseX<=150 && 150<=mouseY && mouseY<=200) {
    run1=true;
  }

  if (run1 == true) {
    if (run3 == false) {
      input.setupTakecode();
    }

    if (runInput == true) {
      println("heyguys");
      input.setupInput();
      noLoop();
    }

    loop();
    if (run3 == true) {
      encrypt.drawEncrypt();
    }

    if (keyPressed && key==ENTER) {
      if (run3== false) {
        encrypt.setupEncrypt();
        encrypt.drawEncrypt();
        run3=true;
        noLoop();
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

  if (Encode == true) {
    input.inputCode();
  }

  if (run3== false) {
    input.keyPressedI();
  }
}


void processFile(File selection) {
 

  if (selection == null) {
    println("File not found, or user closed window");
  } else {
    println("User selected " + selection.getAbsolutePath());
  }

  try { 
    image = ImageIO.read(selection);
    try { imageloaded = ImageIO.write(image, "jpg", new File(sketchPath + "/data/" + selection.getName())); }
    
     catch (IOException e) {
        println("Error occurred writing image file to 'data' folder of sketch.");
        e.printStackTrace();
      }
  }

  catch(IOException e) {
    image = null;
    println("Error occurred reading image file.");
    e.printStackTrace();
  }

  // if (image != null) {
  //   try {
  //     //decrypt.picIn = ImageIO.write(image, "jpg", new File(sketchPath + "/data/" + selection.getName()));
  //   }
  //   catch (IOException e) {
  //     println("Error occurred writing image file to 'data' folder of sketch.");
  //     e.printStackTrace();
  //   }
  // }
}
