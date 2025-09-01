// Using The Coding Train tutorial with Emily Xie:
// https://www.youtube.com/watch?v=S1TQCi9axzg

int totalStreams = 100;
Stream streams[];
int textSz = 19;

void setup() {
  size(500, 500);
  textSize(textSz);

  for(var i = 0; i < totalStreams; i++) {
    streams[i] = new Stream(textSz);
  }
}

void draw() {
  background(0);
  for(var i = 0; i < totalStreams; i++) {
    streams[i].generateSymbols();
    streams[i].render();
  }
}
