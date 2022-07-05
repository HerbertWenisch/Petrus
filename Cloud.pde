class Cloud {
  private final int n = 60;
  private Downfall[] downfalls;
  
  
  public Cloud(){
    downfalls = new Downfall[n];
    for (int i = 0; i < n; i++){
      int c = (int) Math.ceil(Math.random() * 3);
      switch(c) {
        case 1: downfalls[i] = new Raindrop(20 + 10*i, 40); break;
        case 2: downfalls[i] = new Hailstone(20 + 10*i, 40); break;
        case 3: downfalls[i] = new Snowflake(20 + 10*i, 40);
      }  
    }
  }
  
  public void display(){
    for(int i = 0; i < n; i++)
      downfalls[i].display();
    
  }
    
  public void move(float dt){
     for(int i = 0; i < n; i++)
      downfalls[i].move(dt);
     
  }
}
