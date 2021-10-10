Robot robot;
ArrayList<PVector> food;
ArrayList<Wall> walls;
ArrayList<Robot> team1;
ArrayList<Robot> team2;

void setup() {
  size(1024, 600, P2D);
  
   walls = new ArrayList<Wall>();
   food = new ArrayList<PVector>();
   team1 = new ArrayList<Robot>();
   team2 = new ArrayList<Robot>();

   float[] blue ={60,60,125};
   float[] red ={255,0,0};
   
   for(int i=0; i< 100; i++){
     food.add(new Food(randomInt(10,1024), randomInt(10,600)));
     if(i<15)
       walls.add( new Wall(randomInt(1024), randomInt(600) , randomInt(10,Wall.MAXWIDTH) , randomInt(30,Wall.MAXHEIGHT)));  
     if(i<10)
         team1.add(new Robot(randomInt(1024), randomInt(600),red));
         team2.add(new Robot(randomInt(1024), randomInt(600),blue));
   }
   
   
  
} 


void draw(){
  background(0);
  Robot target = new Robot(mouseX,mouseY,null);
  //Draw Food
  fill(0,125,0);
  stroke(0);
  for(int i =0; i<food.size();i++){
     ellipse(food.get(i).x ,food.get(i).y,8,8);
  }
  //Draw walls
  fill(60,60,60);
  stroke(0);
  for(int i =0; i<10;i++){
     rect(walls.get(i).x ,walls.get(i).y,walls.get(i).width,walls.get(i).height,28);
  }
    
  fill(125);
  stroke(200);
  ellipse(target.x,target.y,50,50);
   
  for(int i= 0; i< 10; i++){ 
    //Can be randomised forfairness
    team1.get(i).closest(food);
    team2.get(i).closest(food);
    team1.get(i).update();
    team2.get(i).update();
    team1.get(i).display();
    team2.get(i).display();
  }
}

private int randomInt(int end){
  return (int) random(end);
}

private int randomInt(int start,int end){
  return (int) random( start, end);
  
}
