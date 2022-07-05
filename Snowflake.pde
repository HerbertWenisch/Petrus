public class Snowflake extends Downfall {
  
  public Snowflake(float x, float y){
    super(x,y);
    r = 14.0 + (float) Math.random()* 6;
    vy -= 0.4;
    vx = 0.6;
  }
  
  // zeichnet eine Strecke
  // mx, my: Mittelpunkt der Strecke
  // s: Streckenlänge, phi: Neigungswinkel
  
  private void drawLine(float mx, float my, float s , double phi) {
    // a: Anfangspunkt, b: Endpunkt
    float ax = mx - 0.5 * s * (float) Math.cos(phi);
    float ay = my + 0.5 * s * (float) Math.sin(phi);
    float bx = mx + 0.5 * s * (float) Math.cos(phi);
    float by = my - 0.5 * s * (float) Math.sin(phi);
    line(ax, ay, bx, by);
  }
  
  public void display(){
    stroke(123);  // Linienfarbe: grau
    drawLine(x, y, 2*r, 0);
    drawLine(x, y, 2*r, 0.5 * Math.PI);
    drawLine(x, y, 2*r, 0.25 * Math.PI);
    drawLine(x, y, 2*r, 0.75 * Math.PI);
  }
  
}
