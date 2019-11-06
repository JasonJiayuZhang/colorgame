void play() {
  background(black);
  fill(white);
  rect(390, 0, 20, 600);
  text("TRUE", width/2-200, height/2);
  text("FALSE", width/2+200, height/2);

  if (mouseX>0 && mouseX<390 && mouseY>0 && mouseY<600) {
    fill(yellow);
    text("TRUE", width/2-200, height/2);
  }

  if (mouseX>410 && mouseX<800 && mouseY>0 && mouseY<600) {
    fill(yellow);
    text("FALSE", width/2+200, height/2);
  }

  fill(black);
  rect(200, 0, 400, 105);
  color myDraw = random[(int) random(random.length)];
  textAlign(CENTER);
  textSize(100);
  fill(myDraw); 
  timer = timer - 1;
  if (timer<0) {
    text(words [int (random(4))], width/2, height/2-210);
    timer = 60;
  }
}




void playClicks() {
  if (mouseX>0 && mouseX<390 && mouseY>100 && mouseY<600) {
    mode = testleft;
  }
  if (mouseX>410 && mouseX<800 && mouseY>100 && mouseY<600) {
    mode = testright;
  }
}
