// Visual Synth Demo
// 2018.12.4

float mX;
float mY;
float mZ;
int maxNum=100;
float[] bright = new float[maxNum];
int[] keys = {'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';'};
int[] notes ={2, 4, 7, 9, 11, 14, 16, 19, 21, 23, 26, 28, 31, 33, 35};

Light[] lt=new Light[maxNum];
int lt_count;


void setup() {
  size(800, 600);
  //fullScreen();

  oscOpen();

  for (int i=0; i<maxNum; i++) {
    bright[i] = 0;
    lt[i] = new Light(0, 0, color(0));
  }
  noStroke();
}

void draw() {
  colorMode(RGB);
  //background(230,235,220);
  background(0);
  for (int i=0; i<maxNum; i++) {
    lt[i].draw();
  }
}

//Key Simulation
void keyPressed() {
  for (int i=0; i<10; i++) {
    if (key == keys[i]) {
      bright[i] = 1.0;
      lt_count++;
      if (lt_count>=100)lt_count=0;
      lt[lt_count].on((width/10)*i, height*bright[i], color(i*20, 150, 255, 255));
      sendOscSonicPi(notes[i]+72);
    }
  }
}