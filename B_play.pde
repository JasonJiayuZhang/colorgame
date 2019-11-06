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
  timer = timer-1;
  fill(random[rcolor]);
  text(words[rwords], width/2, height/2-210);
  if (timer<0) {
    mode = GAMEOVER;
  }

  fill(255, 243, 0);

  if (anim_frame++<anim_speed)//pacman close mouth
    arc (width/2, height/2, 50, 50, 0, 2*PI*anim_frame/anim_speed);
  if (mode == GAMEOVER) {
    if (anim_frame>=anim_speed)anim_frame=0;
  }
}

void playClicks() {
  if (rcolor == rwords) {
    correctans = true;
  } else {
    correctans = false;
  }

  if (mouseX>410 && mouseX<800 && mouseY>100 && mouseY<600) {
    ans = false;
  } else if (mouseX>0 && mouseX<390 && mouseY>100 && mouseY<600) {
    ans = true;
  }

  if (ans == correctans) {
    point++;
    rcolor = int(random(0, 4));
    rwords =  int(random(0, 4));
    timer= 240;
    if (anim_frame>=anim_speed)anim_frame=0;
  } else {
    lives --;
    rcolor = int(random(0, 4));
    rwords =  int(random(0, 4));
    timer= 240;
    if (anim_frame>=anim_speed)anim_frame=0;

    if (lives< 0) {
      mode = GAMEOVER;
      timer= 30;
    }
  }
}
