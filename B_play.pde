void play() {
  background(black);
  //== words
  fill(white);
  rect(390, 0, 20, height);
  textSize(100);
  fill(white);
  text("TRUE", width/2-200, height/2);
  text("FALSE", width/2+200, height/2);

  frameRate(1);
  color myDraw = random[(int) random(random.length)];
  textAlign(CENTER);
  textSize(100);
  fill(myDraw); 
  text(words [int (random(4))], width/2, 150);
}

void playClicks() {
  //if (mouseX> 100 && 300> mouseX &&  mouseY >290 && mouseY < 310) {
  //  mode = INTRO;
    if (mouseX> 230 && 330 > mouseX && mouseY> 420 && 520 > mouseY) {
  fill(white);
  text("AI", 240, 480);
  } else {
  fill(white);
  }
}
