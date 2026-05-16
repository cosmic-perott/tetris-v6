//function that creates ball for mulchat
//meaning that it has the ball and the name tag
//and the name tag reads "P1_Mulchat"
//mulchat is number 1 because... well... I am in mulchat :)
void Mulchat_ball(float x, float y){//this is a mechanism whatever I draw beneath will be drawn the same in the x and y positions
    rectMode(CENTER);//rectangle in center
    textAlign(CENTER);//text in center
  ellipseMode(CENTER);//ellipse in center
  fill(0);//black color
  rect(x,y,150,30);//draw a rectange
  fill(255);//white color
  textSize(25);//font size is 25
  text("P1_Mulchat",x,y+8);//write "P1 Mulchat" in the black square
  //you can probably tell that the coordinates are similar to the black square coordinates
  fill(#00D328);//green
  ellipse(x,y+50,50,50);//draw the mulchat ball
  textAlign(CORNER);//text goes back to corner, this is done because the rest of the code needs the text in the corner, not the center
  //think of it as a reset for the position of text
}

//All the functions have the same code as the Mulchat_ball() function but with different colors
//function that creates ball for geomun
void Geomun_ball(float x, float y){//this is a mechanism whatever I draw beneath will be drawn the same in the x and y positions
    rectMode(CENTER);//rectangle in center
    textAlign(CENTER);//text in center
  ellipseMode(CENTER);//ellipse in center
  fill(0);//black color
  rect(x,y,150,30);//draw a rectange
  fill(255);//white color
  textSize(25);//font size is 25
  text("P2_Geomun",x,y+8);//write "P2 Geomun" in the black square
  fill(#0383FF);//blue
  ellipse(x,y+50,50,50);//draw the geomun ball
  textAlign(CORNER);//text goes back to corner, this is done because the rest of the code needs the text in the corner, not the center
  //think of it as a reset for the position of text
}
void Sarah_ball(float x, float y){//this is a mechanism whatever I draw beneath will be drawn the same in the x and y positions
    rectMode(CENTER);//rectangle in center
    textAlign(CENTER);//text in center
  ellipseMode(CENTER);//ellipse in center
  fill(0);//black color
  rect(x,y,150,30);//draw a rectange
  fill(255);//white color
  textSize(25);//font size is 25
  text("P3_Sarah",x,y+8);//write "P3 Sarah" in the black square
  fill(#FF0303);//red
  ellipse(x,y+50,50,50);//draw the sarah ball
  textAlign(CORNER);//text goes back to corner, this is done because the rest of the code needs the text in the corner, not the center
  //think of it as a reset for the position of text
}

void Noro_ball(float x, float y){//this is a mechanism whatever I draw beneath will be drawn the same in the x and y positions
    rectMode(CENTER);//rectangle in center
    textAlign(CENTER);//text in center
  ellipseMode(CENTER);//ellipse in center
  fill(0);//black color
  rect(x,y,150,30);//draw a rectange
  fill(255);//white color
  textSize(25);//font size is 25
  text("P4_Noro",x,y+8);//write "P4 Noro" in the black square
  fill(#9503FF);//purple
  ellipse(x,y+50,50,50);//draw the noro ball
  textAlign(CORNER);//text goes back to corner, this is done because the rest of the code needs the text in the corner, not the center
  //think of it as a reset for the position of text
}

void Jeoji_ball(float x, float y){//this is a mechanism whatever I draw beneath will be drawn the same in the x and y positions
    rectMode(CENTER);//rectangle in center
    textAlign(CENTER);//text in center
  ellipseMode(CENTER);//ellipse in center
  fill(0);//black color
  rect(x,y,150,30);//draw a rectange
  fill(255);//white color
  textSize(25);//font size is 25
  text("P5_Jeoji",x,y+8);//write "P5 Jeoji" in the black square
  fill(#FFE603);//yellow
  ellipse(x,y+50,50,50);//draw the jeoji ball
  textAlign(CORNER);//text goes back to corner, this is done because the rest of the code needs the text in the corner, not the center
  //think of it as a reset for the position of text
}
