void intro() {
  point=0;
  lives = 3;
  background(yellow);
  textAlign(CENTER);
  textSize(100);
  fill(black);
  text("hello", width/2, height/2);
  rect(200, 350, 400, 100);

  myHero.show();

  if (mouseX >200 && 600>mouseX && mouseY >350 && mouseY <450) {
    fill(green);
    rect(200, 350, 400, 100);
  } else {
    fill(white);
    rect(200, 350, 400, 100);
  }
}



void introClicks() {
  if (mouseX >200 && 600>mouseX && mouseY >350 && mouseY <450) {
    mode = PLAY;
  }
}
