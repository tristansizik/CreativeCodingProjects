class Wave2 {
  int yOffset;
  float y, len;
  int waveDepth;
  float speed;   
  int pattern;
  private float[] wavePoints;
  
  int yDirection = 1;
  

  
  // Contructor
  Wave2(int _yOffset, int _y, float _speed, int _waveDepth, int _pattern, int _len) {
    yOffset = _yOffset;
    y = _y;
    speed = _speed;
    waveDepth = _waveDepth;
    pattern = _pattern;
    len = _len;
   
    wavePoints = new float[width];
    for(int i = 0; i < wavePoints.length ; i++){
      wavePoints[i] = _yOffset + random(10,20);
    }
  }
  
  // Custom method for updating the variables
  void update() {
    y = y + (speed * yDirection);
    if (y >= waveDepth || y <= 0) {
      yDirection *= -1;
      y = y + (1 * yDirection);
      speed = random(1,4);
    }
  }
  
  // Custom method for drawing the object
  void display() {
    switch (pattern) {
     case 0:  
       for(int i = 0; i < wavePoints.length; i++) {
           wavePoints[i] = yOffset + y;
           stroke(coswave[i]*255 / 4,i/4, i/3);
           line(i, wavePoints[i]-len, i, wavePoints[i]);   
           stroke(0,0,0,.80);
           line(i, yOffset, i, wavePoints[i]-len);
         }
       break;
     case 1:  
       for(int i = 0; i < wavePoints.length; i++) {
           wavePoints[i] = yOffset + y;
           stroke(coswave[i]*255,i/4, i/3);
           line(i, wavePoints[i]-len, i, wavePoints[i]);
           stroke(0,0,0,.80);
           line(i, yOffset, i, wavePoints[i]-len);
         }
       break;
     case 2:  
       for(int i = 0; i < wavePoints.length; i++) {
           wavePoints[i] = yOffset + y;
           stroke(255 - coswave[i]*255,i/4, i/3);
           line(i, wavePoints[i]-len, i, wavePoints[i]);
           stroke(0);
           line(i, yOffset, i, wavePoints[i]-len);
         }
       break;
     case 3:
       for(int i = 0; i < width; i++) {
           wavePoints[i] = yOffset + y;
           stroke(255 - coswave[i]*255 * PI);
           line(i, wavePoints[i]-len, i, wavePoints[i]);
           stroke(0);
           line(i, yOffset, i, wavePoints[i]-len);
           
         }
       break;
      }
      
  }
}
