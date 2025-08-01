public class Enemy extends AnimatedSprite{
 float boundaryLeft, boundaryRight;
 public Enemy(PImage img, float scale, float bLeft, float bRight){
  super (img,scale);
  moveLeft = new PImage[4];
  moveLeft[0] = loadImage("enemywalk.png");
  moveLeft[1] = loadImage("enemywalk1.png");
  moveLeft[2] = loadImage("enemywalk2.png");
  moveLeft[3] = loadImage("enemywalk3.png");
  moveRight = new PImage[4];
  moveRight[0]=loadImage("enemywalk3.png");
  moveRight[1]=loadImage("enemywalk2.png");
  moveRight[2]=loadImage("enemywalk1.png");
  moveRight[3]=loadImage("enemywalk.png");
  currentImages = moveRight;
  direction = RIGHT_FACING;
  boundaryLeft=bLeft;
  boundaryRight = bRight;
  change_x = 1;
 }
 void update(){
  super.update();
  if(getLeft()<=boundaryLeft){
   setLeft(boundaryLeft);
   change_x *=-1;
  }
  else if (getRight()>= boundaryRight){
   setRight(boundaryRight);
   change_x*=-1;
  }
 }
}
