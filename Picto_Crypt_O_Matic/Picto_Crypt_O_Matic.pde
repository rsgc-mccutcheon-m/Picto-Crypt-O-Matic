//Mark McCutcheon March 31
//Picto-Crypt-O-Matic

Encrypt encrypt;


//Setup canvas
void setup() {

 encrypt = new Encrypt();
  // Create canvas
  size(400, 400);
  
  encrypt.setupEncrypt();
}

void draw() {
  encrypt.drawEncrypt();
}
