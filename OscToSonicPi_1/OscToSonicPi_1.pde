// OSC basic
// 2018.12.4

int midiNote;

void setup() {
  size(600, 600);
  colorMode(HSB);
  oscOpen();
}

void draw() {
  background(key,255,255);
}


void keyPressed() {
  if (key == 'a') {
    midiNote = 72;
  }
  if (key == 's') {
    midiNote = 74;
  }
  if (key == 'd') {
    midiNote = 76;
  }
  if (key == 'f') {
    midiNote = 77;
  }
  if (key == 'g') {
    midiNote = 79;
  }
  if (key == 'h') {
    midiNote = 81;
  }
  if (key == 'j') {
    midiNote = 83;
  }
  if (key == 'k') {
    midiNote = 84;
  }
  if(key == 'l'){
    midiNote = 86;
  }
  if(key == ';'){
    midiNote = 89;
  }

  sendOscSonicPi(midiNote);
}