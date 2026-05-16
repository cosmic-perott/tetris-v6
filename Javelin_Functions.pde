//this is going to be the function that shows the YouTube screen
void YOUTUBE(int x, int y) {
  //this uses the same method as the end_credit part
  //this list is used for the description part
  //this uses \n to divide the lines and make it look like an actual description screen in the YouTube screen
  String NLCSdescription = "NLCS Jeju is a British school situated on the UNESCO World Heritage island of Jeju, South Korea, our proud history began in North \nLondon over 150 years ago at NLCS UK.  Our students combine academic excellence and a deep love of learning with a wealth of co-\ncurricular opportunities, to develop into exceptional individuals who believe that anything is possible.";
  ellipseMode(CENTER);//ellipse in Center
  rectMode(CORNER);//rect in center
  fill(85, 85, 85);//grayish color
  rect(x, y, 761.0, 453.0,6);
  fill(0);
  textSize(30);
  //it will take me ages to explain every single part of this code
  //and it will be quite boring as well to read everything
  //because there are only repeating parts using very basic functions
  
  //these parts are for the main part of the screen
  text("NLCS Jeju Sports Day - Javelin",x+2,483+y);//title
  fill(3, 154, 252);
  ellipse(x+42.5, y+530.5, 61.0, 61.0);
  fill(5, 5, 5);
  fill(0);
  textSize(20);
  text("NLCS Jeju Official Youtube Channel",x+81,y+527);//channel name
  textSize(15);
  fill(160);
  text("3.92K subscribers",x+81,547+y);//subscribers bar
  fill(0);
  rect(x+395, y+506, 120.0, 42.0,30);
    fill(255);
    textSize(25);
    text("Subscribe",405+x,y+535);//subscribe buttons
  fill(210);
  rect(x+533, y+506, 220.0, 42.0,30);
    fill(255);
    textSize(25);
    text("Like | Dislike | Share",540+x,y+535);//like, dislike, share button
  fill(#E3E3E3);
  rect(x, y+574, 758.0, 128.0,6);
  fill(0);
  textSize(13.5);
  text("55M views   16 Jun 2023",x+10,y+597);//description title bar
  //by the way, did you notice that this video has 55Million views?
  //just an easter egg from me
  //just because it is a project, doesn't mean I can't have fun with it
  fill(50);
  text(NLCSdescription,x+10,y+624);//detailed description 
  rect(x+773,y-9, 214.0, 131.0,6);
  rect(x+775, y+140, 215.0, 136.0,6);
  rect(x+773, y+301, 218.0, 139.0,6);
  rect(x+776, y+457, 216.0, 128.0,6);
  rect(x+775, 601+y, 219.0, 101.0,6);
  fill(5, 5, 5);
  fill(0);
  //the other videos that go on the sides
  textSize(18);//text gets smaller
  text("Sportsday - 100M race",1000+x,y+8);
  textSize(12);
  fill(180);
  text("NLCS Jeju Official Youtube Channel",x+1000,y+28);
  text("1.6K views • 1 month ago",x+1000,y+40);
  fill(0);
  textSize(18);
  text("Sportsday - Highjump",1000+x,y+160);
  textSize(12);
 fill(180);
  text("NLCS Jeju Official Youtube Channel",x+1000,y+178);
  text("4.6K views • 1 month ago",x+1000,y+190);
  fill(0);
  textSize(18);
  text("Sportsday - Longjump",1000+x,y+315);
  textSize(12);
 fill(180);
  text("NLCS Jeju Official Youtube Channel",x+1000,y+335);
  text("2.3K views • 1 month ago",x+1000,y+345);
  fill(0);
  textSize(18);
  text("Sportsday - Javelin",1000+x,y+470);
  textSize(12);
 fill(180);
  text("NLCS Jeju Official Youtube Channel",x+1000,y+485);
  text("1.1K views • 1 month ago",x+1000,y+495);
fill(0);
  textSize(18);
  text("Sportsday - Javelin",1000+x,y+615);
  textSize(12);
 fill(180);
  text("NLCS Jeju Official Youtube Channel",x+1000,y+635);
  text("1.1K views • 1 month ago",x+1000,y+645);
  
  //I was going to fill them with different images
  //but then it looked better with them looking bare without any images so this is what I have for you
  fill(255, 0, 0);
  rect(10.5+x, y-77, 70.0, 41.0,30);
  fill(0);
  textSize(25);
  //company name and logo
  text("YouTube",90.5+x,y-47);
  fill(200);
  textSize(15);
  //go to show the region of country :)
  text("KR",180+x,y-67);
  stroke(220);
  strokeWeight(3);
  fill(255);
  rect(223+x, y-67, 695.0, 28.0,30);
  textSize(17);
  fill(170);
  //just some additional details for the screen
  text("Search",223+10+x,y-47);
  noStroke();
  fill(206, 28, 234);
  ellipse(1120.5+x, y-58.5, 39.0, 39.0);   
  screen(x-14,y);
}
//so I made a separate function for the screen
//if you are asking me "why?"
//all I can say is... "that is a very good question"
void screen(int x, int y) {
  noStroke();//no outline
  //this is a part of the code that is deleted, but just left here for reference
    //  for (int xx = -275; xx<800; xx+=100){
    //    rectMode(CORNER);
    //  individual_tetris_block_3d(xx,500,100,#00900F,#00D316,#00C415,#00EA19);
    //}
    //yes, I placed all of these blocks individually
    //I really need a certificate for effort... anyways...
    individual_tetris_block_3d(x+50,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    individual_tetris_block_3d(x+125,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    individual_tetris_block_3d(x+225,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    individual_tetris_block_3d(x+325,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    //these are tiles that are green
    //I don't see the need to make more tiles that are blue for the sky
    //because it would look weird
    individual_tetris_block_3d(x+425,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    individual_tetris_block_3d(x+525,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    individual_tetris_block_3d(x+625,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    individual_tetris_block_3d(x+725,y+410,100,#00900F,#00D316,#00C415,#00EA19);
    fill(#00AAFC);//blue
    noStroke();
    rectMode(CORNER);
    //the blue background
    rect(x,y,775,360);
}

void FirstJavelin() {//this is the where we reset the javelin variables
  JAVELIN_POSITION_1 = new PVector(RED_BALL_X_AXIS, RED_BALL_DROP);//start from where ever the red_ball is 
  //the red ball is the object that is going to be throwing the javelin
  //I could write the coordinates instead of the variables but this more accurate
  JAVELIN_VELOCITY_1 = new PVector(10, -10);//the javelin is going to go 10 for each time for the x axis and -10 each time for the y axis
  JAVELIN_ACCELERATION_1 = new PVector(0, JAVELIN_GRAVITY);//the acceleration is going to be the part where the javelin starts to fall with gravity
  //to be honest, this is a very cool way to show javelin because it works very smoothly compared to other methods
}

void SecondJavelin() {//this is the where we reset the javelin variables
  JAVELIN_POSITION_2 = new PVector(RED_BALL_X_AXIS, RED_BALL_DROP);//start from where ever the red_ball is
  //the red ball is the object that is going to be throwing the javelin
  //I could write the coordinates instead of the variables but this more accurate
  JAVELIN_VELOCITY_2 = new PVector(10, -20);//the javelin is going to go 10 for each time for the x axis and -10 each time for the y axis
  JAVELIN_ACCELERATION_2 = new PVector(0, JAVELIN_GRAVITY);//the acceleration is going to be the part where the javelin starts to fall with gravity
  //to be honest, this is a very cool way to show javelin because it works very smoothly compared to other methods
}
void ThirdJavelin(){//this is the where we reset the javelin variables
   JAVELIN_POSITION_3 = new PVector(RED_BALL_X_AXIS, RED_BALL_DROP);//start from where ever the red_ball is
   //the red ball is the object that is going to be throwing the javelin
  //I could write the coordinates instead of the variables but this more accurate
  JAVELIN_VELOCITY_3 = new PVector(10, -25);//the javelin is going to go 10 for each time for the x axis and -10 each time for the y axis
  JAVELIN_ACCELERATION_3 = new PVector(0, JAVELIN_GRAVITY);//the acceleration is going to be the part where the javelin starts to fall with gravity
  //to be honest, this is a very cool way to show javelin because it works very smoothly compared to other methods
}
void NormalWorldJavelin(){//this is the where we reset the javelin variables
   JAVELIN_POSITION_4 = new PVector(50, 450);//start from where ever the red_ball is
    //the red ball is the object that is going to be throwing the javelin
  //I could write the coordinates instead of the variables but this more accurate
  JAVELIN_VELOCITY_4 = new PVector(15, -20);//the javelin is going to go 10 for each time for the x axis and -10 each time for the y axis
  JAVELIN_ACCELERATION_4 = new PVector(0, JAVELIN_GRAVITY);//the acceleration is going to be the part where the javelin starts to fall with gravity
  //to be honest, this is a very cool way to show javelin because it works very smoothly compared to other methods
}

void FirstJavelinThrow() {
  JAVELIN_VELOCITY_1.add(JAVELIN_ACCELERATION_1);// update the velocity of the first javelin by adding acceleration to it
  JAVELIN_POSITION_1.add(JAVELIN_VELOCITY_1);// update the position of the first javelin by adding velocity to it
  // calculate the air resistance force on the first javelin
  // and create a vector representing its direction and magnitude
  PVector AIR_RESISTANCEVec = JAVELIN_VELOCITY_1.copy().normalize().mult(-AIR_RESISTANCE * JAVELIN_VELOCITY_1.magSq() / JAVELIN_LENGTH);
  JAVELIN_ACCELERATION_1.set(0, JAVELIN_GRAVITY).add(AIR_RESISTANCEVec);// update the acceleration of the first javelin by adding the gravity force and air resistance force to it
  stroke(0);//black outline
  strokeWeight(2);
  // draw a line representing the first javelin
  // the line starts at the current position of the javelin and extends in the direction of its velocity
  // the length of the line is proportional to the length of the javelin
  line(JAVELIN_POSITION_1.x, JAVELIN_POSITION_1.y, JAVELIN_POSITION_1.x + JAVELIN_LENGTH * JAVELIN_VELOCITY_1.x / JAVELIN_VELOCITY_1.mag(), JAVELIN_POSITION_1.y + JAVELIN_LENGTH * JAVELIN_VELOCITY_1.y / JAVELIN_VELOCITY_1.mag());
  // draw a circle at the current position of the first javelin
  ellipse(JAVELIN_POSITION_1.x, JAVELIN_POSITION_1.y, 20, 20);
  // check if the first javelin has gone past a certain distance (determined by RED_BALL_X_AXIS)
  // and if so, update the "scene" variable to indicate that it's time for the next javelin throw
  if (JAVELIN_POSITION_1.x > RED_BALL_X_AXIS + 150) {
    JAVELIN_SCENE += 1;
  }
}

// The SecondJavelinThrow, ThirdJavelinThrow, and NormalWorldJavelinThrow functions
// are nearly identical to the FirstJavelinThrow function, except that they operate on
// different variables representing different javelins. 

void SecondJavelinThrow() {
    JAVELIN_VELOCITY_2.add(JAVELIN_ACCELERATION_2);// update the velocity of the first javelin by adding acceleration to it
  JAVELIN_POSITION_2.add(JAVELIN_VELOCITY_2);// update the position of the first javelin by adding velocity to it
  // calculate the air resistance force on the first javelin
  // and create a vector representing its direction and magnitude
  PVector AIR_RESISTANCEVec = JAVELIN_VELOCITY_2.copy().normalize().mult(-AIR_RESISTANCE * JAVELIN_VELOCITY_2.magSq() / JAVELIN_LENGTH);
  // update the acceleration of the first javelin by adding the gravity force and air resistance force to it
  JAVELIN_ACCELERATION_2.set(0, JAVELIN_GRAVITY).add(AIR_RESISTANCEVec);
  stroke(0);
  strokeWeight(2);
  // draw a line representing the first javelin
  // the line starts at the current position of the javelin and extends in the direction of its velocity
  // the length of the line is proportional to the length of the javelin
  line(JAVELIN_POSITION_2.x, JAVELIN_POSITION_2.y, JAVELIN_POSITION_2.x + JAVELIN_LENGTH * JAVELIN_VELOCITY_2.x / JAVELIN_VELOCITY_2.mag(), JAVELIN_POSITION_2.y + JAVELIN_LENGTH * JAVELIN_VELOCITY_2.y / JAVELIN_VELOCITY_2.mag());
  // draw a circle at the current position of the first javelin
  ellipse(JAVELIN_POSITION_2.x, JAVELIN_POSITION_2.y, 20, 20);
  // check if the first javelin has gone past a certain distance (determined by RED_BALL_X_AXIS)
  // and if so, update the "scene" variable to indicate that it's time for the next javelin throw
  if (JAVELIN_POSITION_2.x > RED_BALL_X_AXIS+370){
    JAVELIN_SCENE += 1;
  }
}

//The rest of these functions are basically the same
void ThirdJavelinThrow() {
    JAVELIN_VELOCITY_3.add(JAVELIN_ACCELERATION_3);
  JAVELIN_POSITION_3.add(JAVELIN_VELOCITY_3);
  // calculate the air resistance force on the first javelin
  // and create a vector representing its direction and magnitude
  PVector AIR_RESISTANCEVec = JAVELIN_VELOCITY_3.copy().normalize().mult(-AIR_RESISTANCE * JAVELIN_VELOCITY_3.magSq() / JAVELIN_LENGTH);
  JAVELIN_ACCELERATION_3.set(0, JAVELIN_GRAVITY).add(AIR_RESISTANCEVec);
  stroke(0);
  strokeWeight(2);
  line(JAVELIN_POSITION_3.x, JAVELIN_POSITION_3.y, JAVELIN_POSITION_3.x + JAVELIN_LENGTH * JAVELIN_VELOCITY_3.x / JAVELIN_VELOCITY_3.mag(), JAVELIN_POSITION_3.y + JAVELIN_LENGTH * JAVELIN_VELOCITY_3.y / JAVELIN_VELOCITY_3.mag());
  ellipse(JAVELIN_POSITION_3.x, JAVELIN_POSITION_3.y, 20, 20);
  if (JAVELIN_POSITION_3.x > RED_BALL_X_AXIS+370){
    JAVELIN_SCENE += 1;
  }
}

//this function is different in terms of how it does not add 1 to the javelin scene
void NormalWorldJavelinThrow() {
    JAVELIN_VELOCITY_4.add(JAVELIN_ACCELERATION_4);
  JAVELIN_POSITION_4.add(JAVELIN_VELOCITY_4);
  PVector AIR_RESISTANCEVec = JAVELIN_VELOCITY_4.copy().normalize().mult(-AIR_RESISTANCE * JAVELIN_VELOCITY_4.magSq() / JAVELIN_LENGTH);
  JAVELIN_ACCELERATION_4.set(0, JAVELIN_GRAVITY).add(AIR_RESISTANCEVec);
  stroke(0);
  strokeWeight(2);
  line(JAVELIN_POSITION_4.x, JAVELIN_POSITION_4.y, JAVELIN_POSITION_4.x + JAVELIN_LENGTH * JAVELIN_VELOCITY_4.x / JAVELIN_VELOCITY_4.mag(), JAVELIN_POSITION_4.y + JAVELIN_LENGTH * JAVELIN_VELOCITY_4.y / JAVELIN_VELOCITY_4.mag());
  ellipse(JAVELIN_POSITION_4.x, JAVELIN_POSITION_4.y, 20, 20);
}
