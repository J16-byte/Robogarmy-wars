class Robot extends PVector {
  PVector accelaration=new PVector(0, 0);
  PVector velocity=new PVector(0, -2);
  float maxSpeed=2;
  float maxForce=0.5;
  float strength =50;
  float health = 100;
  float [] colour={0,0,0};
  ArrayList<Robot> combined = new ArrayList<Robot>();
  RobotDrawer drawer= null;
  
  public Robot(){
    drawer=new RobotDrawer(this);
  }

  public Robot(int x, int y, float [] colour) {
    super(x, y);
    drawer=new RobotDrawer(this);
    this.colour =colour;
  }

  public void update() {
    this.velocity.add(accelaration);
    this.velocity.limit(maxSpeed);
    this.add(velocity);
    this.accelaration.mult(0.0);
    
  }
  public void closest(ArrayList<PVector>  list){
     double highest = Double.POSITIVE_INFINITY;
     int closest =-1;
     for(int i =list.size()-1 ;i>=0;i--){
      double distance = this.dist(list.get(i));
      System.out.println(list.get(i).x+" "+list.get(i).y);
       if(highest>distance){
           highest = distance;
           closest = i;
       }
     }
     
     if(highest<2){
       list.remove(closest);
       health =health+5;
     }else if(closest!=-1)  
       seek(list.get(closest));
          
  }
  //Craig Renalds Nature of Code
  public void seek(PVector item) {
    PVector desired = PVector.sub(item,this);
    desired.setMag(maxSpeed);
    PVector steering = desired.sub(velocity);
    this.accelaration.add(steering);
  }

  public void display() {
       drawer.display();   
  }
}
