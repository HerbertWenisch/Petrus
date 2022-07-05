public class Hailstone extends Downfall {
  
  public Hailstone(float x, float y){
    super(x,y);
    r = 14.0 + (float) Math.random()* 6;
    vy += 0.4;
    vx = 0.6;
  }
  
  public void display(){
    noStroke();
    fill(40,40, 200);  // blau
    rect(x,y,r,r);
  }
}
