public class Coin extends AnimatedSprite{
  public Coin(PImage img,   float scale){
   super (img,scale); 
   standNeutral = new PImage[4];
   standNeutral[0] = loadImage("walk1.png");
      standNeutral[1] = loadImage("Walk2.png");
         standNeutral[2] = loadImage("Walk3.png");
            standNeutral[3] = loadImage("Walk4.png");
            currentImages =standNeutral; 
            
  }
  
}
