void play() {
  background(black);
  fill(white);
  textSize(100);
  rect(390, 0, 20, 600);
  text("TRUE", width/2-200, height/2);
  text("FALSE", width/2+200, height/2);

  fill(white);
  textSize(50);
  text("Point: "+point, 110, 50);
  text(" Lives: " + lives, 100, 150);

  textSize(100);
  if (mouseX>0 && mouseX<390 && mouseY>0 && mouseY<600) {
    fill(yellow);
    text("TRUE", width/2-200, height/2);
  }
  textSize(100);
  if (mouseX>410 && mouseX<800 && mouseY>0 && mouseY<600) {
    fill(yellow);
    text("FALSE", width/2+200, height/2);
  }

  fill(black);
  rect(200, 0, 400, 105);
  textAlign(CENTER);
  textSize(100);
  fill(colour); 
  text(words[word], width/2, height/2-210);
  
}





void playClicks() {
  if (mouseX>0 && mouseX<390 && mouseY>100 && mouseY<600) {
   colour = random[(int) random(random.length)];
    word =  int(random(4));
    if (mouseX>410 && mouseX<800 && mouseY>100 && mouseY<600) {
    }
  }
}
