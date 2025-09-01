class Stream {
  ArrayList<CharSymbol> symbols = new ArrayList();
  int totalSymbols = round(random(5, 30));
  float speed = random(2, 10.5);
  int symbolSize;
  
  Stream(int tempSz) {
    symbolSize = tempSz;
  }

  void generateSymbols() {
        int y = round(random(-500, 0));
        int x = round(random(0, width));
        boolean first = round(random(0,4)) == 1;

        for(var i = 0; i <= totalSymbols; i++) {
            // fade towards the end
            int alpha = round( (i / totalSymbols) * 255);
            alpha = round( map(alpha, 0, 255, 255, 0) );
            CharSymbol symbol = new CharSymbol(x, y, speed, alpha, first);
            symbol.setToRandomSymbol();
            symbols.add(symbol);
            y -= symbolSize;
            first = false;
        }
    }

   void render() {
      for(var i = 0; i < totalSymbols; i++) {
        symbols.get(i).display();
      }
   }
}
