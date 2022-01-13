float[] coswave;

void setup() {
  size(900, 900);
  coswave = new float[width];
  for (int i = 0; i < coswave.length; i++) {
    float amount = map(i, 0, width, 0,PI);
    coswave[i] = abs(cos(amount));
  }
  background(255);
  noLoop();
}

void draw() {
  //=====      Single Point Version

  //int lowestPoint = 0;
  //
  //while(lowestPoint < height) {
  //  lowestPoint = returnHeightLinear(lowestPoint);
  //}
  
  //=====      Array Version
  
  int lowestPoint = 0;  
  int[] heightArr = new int[width];
 
  while(lowestPoint < height) {
    lowestPoint = coloredMountain(heightArr);
  }
  
}

int coloredMountain(int[] _heightArr) {
  int caseChoice = int(random(3));
  int lowestPoint = 0;
  int previousHeight = 0;
  
  //Changing this will change steepness of mountains
  int diff = 1;
  
  switch (caseChoice) {
     case 0:  
       for(int i = 0; i < _heightArr.length; i++) {
         if(i == 0){
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(50,60));
           stroke(coswave[i]*255 / 4,i/4, i/3);
           line(i, previousHeight, i, _heightArr[i]);
           
           lowestPoint = _heightArr[0];
         } else {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] = _heightArr[i-1] + diff;
           } else {
             _heightArr[i] = _heightArr[i-1] - diff;
           }
           stroke(coswave[i]*255 / 4,i/4, i/3);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
         }
       }
       break;
     case 1:  
       for(int i = 0; i < _heightArr.length; i++) {
           if(i == 0){
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(10,20));
           stroke(coswave[i]*255,i/4, i/3);
           line(i, previousHeight, i, _heightArr[i]);
           
           lowestPoint = _heightArr[0];
         } else {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] = _heightArr[i-1] + diff;
           } else {
             _heightArr[i] = _heightArr[i-1] - diff;
           }
           stroke(coswave[i]*255,i/4, i/3);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
         }
       }
       break;
     case 2:  
       for(int i = 0; i < _heightArr.length; i++) {
           if(i == 0){
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(10,20));
           stroke(255 - coswave[i]*255,i/4, i/3);
           line(i, previousHeight, i, _heightArr[i]);
           
           lowestPoint = _heightArr[0];
         } else {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] = _heightArr[i-1] + diff;
           } else {
             _heightArr[i] = _heightArr[i-1] - diff;
           }
           stroke(255 - coswave[i]*255,i/4, i/3);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
         }
       }
       break;
     case 3:
       for(int i = 0; i < width; i++) {
           if(i == 0){
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(10,20));
           stroke(255 - coswave[i]*255 * PI);
           line(i, previousHeight, i, _heightArr[i]);
           
           lowestPoint = _heightArr[0];
         } else {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] = _heightArr[i-1] + diff;
           } else {
             _heightArr[i] = _heightArr[i-1] - diff;
           }
           stroke(255 - coswave[i]*255 * PI);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
         }
       }
       break;
  }
  return lowestPoint;
}

int blackAndWhite_Squares(int[] _heightArr) {
  int caseChoice = int(random(3));
  int lowestPoint = _heightArr[0];
  int previousHeight = 0;
  
  int diff = 4;
  int spacing = 50;
  
  switch (caseChoice) {
     case 0:  
       for(int i = 0; i < _heightArr.length; i++) {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] += diff + spacing;
           } else {
             _heightArr[i] -= diff + spacing;
           }
           stroke(coswave[i]*255 / 4);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
     case 1:  
       for(int i = 0; i < _heightArr.length; i++) {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] += diff + spacing;
           } else {
             _heightArr[i] -= diff + spacing;
           }
           stroke(coswave[i]*255);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
     case 2:  
       for(int i = 0; i < _heightArr.length; i++) {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] += diff + spacing;
           } else {
             _heightArr[i] -= diff + spacing;
           }
           stroke(255 - coswave[i]*255);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
     case 3:
       for(int i = 0; i < width; i++) {
           previousHeight = _heightArr[i];
           int addOrSub = int(random(1.9));
           if(addOrSub == 0) {
             _heightArr[i] += diff + spacing;
           } else {
             _heightArr[i] -= diff + spacing;
           }
           stroke(255 - coswave[i]*255 * PI);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
  }
  return lowestPoint;
}

int blackAndWhite_Rectangle(int startHeight) {
  int stopHeight = startHeight + int(random(55,60));
  int caseChoice = int(random(3));
  
  switch (caseChoice) {
     case 0:  
       for(int i = 0; i < width; i++) {
           stroke(coswave[i]*255 / 4);
           line(i, startHeight, i, stopHeight);
       }
       break;
     case 1:  
       for(int i = 0; i < width; i++) {
           stroke(coswave[i]*255);
           line(i, startHeight, i, stopHeight);
       }
       break;
     case 2:  
       for(int i = 0; i < width; i++) {
           stroke(255 - coswave[i]*255);
           line(i, startHeight, i, stopHeight);
       }
       break;
     case 3:
       for(int i = 0; i < width; i++) {
           stroke(255 - coswave[i]*255 * PI);
           line(i, startHeight, i, stopHeight);
       }
       break;
  }
  return stopHeight;
}

int returnHeightArr(int[] _heightArr) {
  int caseChoice = int(random(3));
  int lowestPoint = _heightArr[0];
  int previousHeight = 0;
  
  int low = 20;
  int high = 90;
  
  switch (caseChoice) {
     case 0:  
       for(int i = 0; i < _heightArr.length; i++) {
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(low,high));
           stroke(coswave[i]*255 / 4);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
     case 1:  
       for(int i = 0; i < _heightArr.length; i++) {
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(low,high));
           stroke(coswave[i]*255);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
     case 2:  
       for(int i = 0; i < _heightArr.length; i++) {
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(low,high));
           stroke(255 - coswave[i]*255);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
     case 3:
       for(int i = 0; i < width; i++) {
           previousHeight = _heightArr[i];
           _heightArr[i] += int(random(low,high));
           stroke(255 - coswave[i]*255 * PI);
           line(i, previousHeight, i, _heightArr[i]);
           
           if(_heightArr[i] < lowestPoint) lowestPoint = _heightArr[i];
       }
       break;
  }
  return lowestPoint;
}
