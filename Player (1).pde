public class Player extends AnimatedSprite{

  boolean onPlatform, inPlace;
  PImage[]standLeft;
  PImage[]standRight;
  PImage[]jumpLeft;
  PImage[]jumpRight;
  public Player(PImage img, float scale){
   super(img,scale);
   direction=RIGHT_FACING;
   onPlatform = true;  
   inPlace =  true;
   standLeft = new PImage[1];
   standLeft[0] = loadImage("stand - Copy.png");
   standRight = new PImage[1];
   standRight[0]=loadImage("stand.png");
   jumpLeft = new PImage[1];
   jumpLeft[0] = loadImage("jump.png");
   moveLeft =new PImage[4];
   moveLeft[0] = loadImage("walk1.png");
   moveLeft[1]=loadImage("Walk2.png");
   moveLeft[2] = loadImage("Walk3.png");
   moveLeft[3] = loadImage("Walk4.png");
   moveRight = new PImage[4];
   moveRight[0] = loadImage("Walk4 - Copy.png");
   moveRight[1]=loadImage("Walk3 - Copy.png");
   moveRight[2] = loadImage("Walk2 - Copy.png");
   moveRight[3] = loadImage("walk1 - Copy.png");
   currentImages = standRight;
  }
  @Override
  public void updateAnimation(){
   onPlatform = isOnPlat(this, platforms);
   inPlace = change_x==0 && change_y==0;
   super.updateAnimation();
  }
  @Override 
  public void selectDirection(){
    if(change_x>0){
      direction = RIGHT_FACING;
    }
    else if(change_x<0){
    direction=LEFT_FACING;
    }
  }
  @Override
  public void selectCurrentImages(){
    if(direction == RIGHT_FACING){
     if(inPlace){
      currentImages =standRight; 
     }
     else{
      currentImages = moveRight; 
     }
    }
    else if(direction == LEFT_FACING){
     if(inPlace){
      currentImages =standLeft; 
     }
     else if(!onPlatform){
      currentImages = jumpLeft; 
     }
     else{
      currentImages = moveLeft; 
     }
    }
  }
  
}
