class RobotDrawer {

  Robot robot;

  RobotDrawer (Robot robot) {
    this.robot=robot;
  }

  public void display() {
    if (robot.combined.size()==0) {

      float angle = robot.velocity.heading() + PI / 2+ PI/4 ;
      pushMatrix();
      translate(robot.x, robot.y);
      rotate(angle);
      
      color col = color(robot.colour[0], robot.colour[1], robot.colour[2]);

      int r=8;

      fill(col);
      stroke(75,75,75);
      strokeWeight(1);
      beginShape();
      vertex(0, 0);
      vertex(0, r * 2);
      vertex(2*r, 0);

      endShape(CLOSE);
      popMatrix();
    }
  }
  
  public void display2() {
    if (robot.combined.size()==0) {

      float angle = robot.velocity.heading() + PI/5 + PI/4+ PI ;
      pushMatrix();
      translate(robot.x, robot.y);
      rotate(angle);

      color col = color(255, 255, 0);

      int r=10;

      fill(col);
      stroke(75,75,75);
      strokeWeight(1);
      beginShape();
      vertex(0, 0);
      vertex(0, r * 2);
      vertex(2*r, 0);
      vertex(-2*r, 0);
      vertex(0, r * 2);
  
      endShape(CLOSE);
      popMatrix();
    }
  }
  
  
  public void display4() {
    if (robot.combined.size()==0) {

      float angle = robot.velocity.heading() + PI/5 + PI/4+ PI ;
      pushMatrix();
      translate(robot.x, robot.y);
      rotate(angle);

      color col = color(255, 255, 0);

      int r=15;

      fill(col);
      stroke(75,75,75);
      strokeWeight(1);
      beginShape();
      vertex(0, 0);
      vertex(0, r);
      vertex(r, 0);
      vertex(-r, 0);
      vertex(0, r);
      vertex(0, -r);
      vertex(r, 0);
      vertex(-r, 0);
      vertex(0, -r);

      endShape(CLOSE);
      popMatrix();
    }
  }
}
