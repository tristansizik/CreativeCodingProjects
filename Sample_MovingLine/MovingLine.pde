class MovingLine {
 int x1,x2,y1,y2,dirX,dirY,h;
 int[] st = new int[3];
 int yOffset;
 
  MovingLine(int x1, int x2, int y1, int y2, int h) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.h = h;
    yOffset = y1;
    for( int i = 0; i < st.length ; i++)
      st[i] = int(random(255));
    dirX = 1;
    dirY = 1;
  }
  
  void update() {
    if ( x1 > width|| x1 < 0 ) {
      dirX *= -1;
      for( int i = 0; i < st.length ; i++)
        st[i] = int(random(255));
    }
    if ( y1 > h + yOffset || y1 < yOffset) {
       dirY *= -1;
    }
    x1 = x1 + dirX;
    x2 = x2 + dirX;
    y1 = y1 + dirY;
    y2 = y2 + dirY;
  }
  
  void display() {
    stroke(st[0],st[1],st[2]);
    line(x1,y1,x2,y2);
  }
  
}
