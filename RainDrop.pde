public class Raindrop extends Downfall {
  
  public Raindrop(float x, float y){
    super(x,y);
  }
  
  public void display(){
    fill(12);
    ellipse(x,y,r,r);
  }
}
