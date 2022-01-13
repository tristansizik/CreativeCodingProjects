MovingLine[] movArr;

//MovingLine tempLine = new MovingLine(height/3,height*2/3,width/3,width*2/3,50);
//MovingLine tempLine2 = new MovingLine(height/3+100,height*2/3+100,width/3+100,width*2/3+100,50);
//MovingLine tempLine3 = new MovingLine(height/3+200,height*2/3+200,width/3+200,width*2/3+200,50);
//MovingLine tempLine4 = new MovingLine(height/3+300,height*2/3+300,width/3+300,width*2/3+300,50);

void setup() {
  size(400,400);
  movArr = new MovingLine[3];
  for ( int i = 0 ; i < movArr.length ; i++){
    movArr[i] = new MovingLine(height/movArr.length + 50*i,height*2/movArr.length + 50*i,width/movArr.length + 50*i,width*2/movArr.length + 50*i,20);
  }
}


void draw() {
  for(MovingLine line : movArr){
    line.update();
    line.display();
  }
}
