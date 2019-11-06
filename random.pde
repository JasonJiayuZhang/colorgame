color yellow = #DFE800;
color green = #0DD142;
color lgreen = #16861A;
color purple = #9575DB;
color blue = #75DBC9;
color lblue = #23A7B7;
color rred = #9B1F1F;
color red = #E3102C;
color black = #141415;
color lblack = #48413A;
color brown = #985F19;
color orange = #FFB803;
color lorange = #C46B18;
color grey = #A09884;
color white = #FFFFFF;
color lwhite = #D6D5D4;
color dblue = #0D4BFF;
color lgrey = #6A6969;
color pink = #ED02D2;
color lred = #FF3636;
color[] random = {color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), color(255, 255, 0)};
String[] words = {"red", "blue", "green", "yellow"};
int mode;
final int INTRO  = 1;
final int PLAY   = 2;
final int GAMEOVER = 3;
final int PAUSE  = 4;

void setup() {
  size(800, 600);
  mode = INTRO;
  smooth();
}

void draw() {
if(mode == INTRO) intro();
else if(mode == PLAY) play();
else if(mode == GAMEOVER) gameover();
else if(mode == PAUSE) pause();
else println("mode error");
} 

void mousePressed(){
  if(mode == INTRO) introClicks();
  else if (mode == PLAY) playClicks();
  else if (mode == GAMEOVER) gameoverClicks();
}
