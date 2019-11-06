void play() {
  frameRate(0.9);
  background(black);
  color myDraw = random[(int) random(random.length)];
  textAlign(CENTER);
  textSize(100);
  fill(myDraw); 
  text(words [int (random(4))], width/2, height/2);
} 




void playClicks() {
}
