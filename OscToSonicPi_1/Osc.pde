import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void oscOpen() {
  oscP5 = new OscP5(this, 9999);
  myRemoteLocation = new NetAddress("localhost", 4559);
}

void sendOscSonicPi(int note){
  OscMessage myMessage = new OscMessage("/note");
  myMessage.add(note); 
  oscP5.send(myMessage, myRemoteLocation);
}


/*
##| SonicPi Code
live_loop :p5 do
  use_real_time
  a = sync "/osc/note"
  synth :beep, note: a,  release: 0.5
end
*/