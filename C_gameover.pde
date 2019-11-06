void gameover() {
  background(black);
  fill(white);
  text("GAMEOVER", width/2, height/2);


  text("highscore"+highscore, width/2, height/2+100);
  if (highscore < point) {
    highscore = point;
  }
}

void gameoverClicks() {
  mode = INTRO;
  timer = 240;
}
