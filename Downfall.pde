abstract class Downfall {
  protected float r;
  protected float x;
  protected float y;
  protected float vx;
  protected float vy;
  
  public Downfall(float x,  float y) {
    this.x = x;
    this.y = y;
    r = 6.0 + (float) Math.random()* 5;
    vx = 0.5;
    vy = 0.2 *r + 0.3 *(float) Math.random();
  }
  
  public abstract void display();
  
  public void move(float dt){
    float dx = vx * dt;
    float dy = vy * dt;
    x += dx;
    y += dy;
  }
}
