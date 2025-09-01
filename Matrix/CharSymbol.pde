class CharSymbol {
  float x;
  float y;
  float speed;
  int alpha;
  boolean first;
  int value;
  
  CharSymbol(float tempx, float tempy, float tempspeed, int tempalpha, boolean tempfirst) {
    x = tempx;
    y = tempy;
    speed = tempspeed;
    alpha = tempalpha;
    first = tempfirst;
  }

  void setToRandomSymbol() {
        // 96 Katakana character codes in Katana
        // takes one randomly and turns it into a string,
        // then sets to this.value
        // randomly will choose 0 or 1 as well
        value = round(random(0,1));
  }

  // increment the y position according to the speed
  // to get rain
  void rain() {
        if(y > height) {
            y = 0;
        } else {
            y += speed;
        }
        //this.y = (this.y > height) ? 0 : this.y += this.speed;
  }

  void display() {
        if(first) {
            fill(220, 255, 220, 255);
        } else {
            fill(0, 255, 70, alpha);
        }
        text(value, x, y);
        this.rain();
        if(random(0, 1) < 0.06) {
            setToRandomSymbol();
        }
  }
}
