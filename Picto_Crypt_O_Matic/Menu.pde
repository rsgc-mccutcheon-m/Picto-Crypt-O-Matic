// Homescreen

class Homescreen {


  void setupMenu() {
    size(400, 400);
    background(#4a5471);

    strokeWeight(4);
    stroke(142);
    fill(#76bbe3);
    rect(50, 150, 100, 50);
    textSize(20);
    fill(142);
    text("Encrypt", 63, 184);
    fill(#76bbe3);
    rect(250, 150, 100, 50);
    fill(142);
    text("Decrypt", 263, 184); 
    line(200, 0, 200, 400);
  }
}
