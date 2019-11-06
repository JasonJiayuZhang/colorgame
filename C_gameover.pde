void gameover() {
  background(black);
  fill(white);
  text("GAMEOVER", width/2, height/2);
  text("score" + point, width/2, height/2-100);
}
void gameoverClicks() {
  mode = INTRO;
}
