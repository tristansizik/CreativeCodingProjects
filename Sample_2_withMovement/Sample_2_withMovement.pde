float[] coswave;
int waveDepth = 50;
Wave[] waves;
Wave2[] waves2;

void setup() {
  size(300, 300);
  coswave = new float[width];
  for (int i = 0; i < coswave.length; i++) {
    float amount = map(i, 0, width, 0,PI);
    coswave[i] = abs(cos(amount));
  }
  
  int count = height / waveDepth;
  waves = new Wave[count];
  for(int i = 0; i < count; i++) {
      waves[i] = new Wave(i*waveDepth, waveDepth, random(1,4), waveDepth, int(random(3)),10 ); 
  }
  
  //waves2 = new Wave2[count];
  //for(int i = 0; i < count; i++) {
  //    waves2[i] = new Wave2(i*waveDepth, waveDepth, random(1,4), waveDepth, int(random(3)),10 ); 
  //}
}

void draw() {
  fill(0);
  for (Wave wav : waves) {
    wav.update();
    wav.display();
  }
  //for (Wave2 wav : waves2) {
  //  wav.update();
  //  wav.display();
  //}
}
