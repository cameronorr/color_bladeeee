float X_DEFAULT = 100;
float Y_DEFAULT = 100;
float x = X_DEFAULT+200;
float y = Y_DEFAULT+200;
float xspeed = 1;
float yspeed = 3.3;
float newx = random(x);
float newy = random(y);
int rand_num = int(random(3))-1;
int colour = 0;
float circlex = width/2;
float circley = height/2;

void setup() {
  size(800,800);
  smooth();
  background(255);
}

void draw() {
  rand_num = int(random(3))-1;;
  x = x + xspeed;
  y = y + yspeed;
    
  if (rand_num == 1 || rand_num == 3) { 
    xspeed = xspeed * -1;
  }
  else if (rand_num == 0 || rand_num == 2) {
    yspeed = yspeed * -1;
  }
  
  if ((x > width-X_DEFAULT) || (x < 0)) { 
    xspeed = xspeed * -1;
  }
  if ((y > height-Y_DEFAULT) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  colour = (colour + int(random(2)))%255;
  stroke(colour, colour+random(255), colour+random(255));
  fill(colour, colour+random(255), colour+random(255));
  newx = random(x);
  newy = random(y);
  //ellipse(x,y,16,16);
  
  // Top left
  //line(x,y,x,y);
  //line(y,x,y,x);
  
  // Top right
  //line(width-x,y,width-x,y);
  //line(width-y,x,width-y,x);
  
  //// bottom right
  //line(width-x,height-y,width-x,height-y);
  //line(width-y,height-x,width-y,height-x);
  
  //// bottom right
  //line(x,height-y,x,height-y);
  //line(y,height-x,y,height-x);
  
  //color(y,x);
  
  curve(circlex, circley, circlex+newx, circley+newy, circlex+newx*PI/4, circley+newy*PI/4, circlex, circley+newy);
  curve(circley, circlex, circley+newy, circlex+newx, circley+newy*PI/4, circlex+newx*PI/4, circley+newy, circlex);
  
  var R = colour*random(4)%255;
  stroke(R, R+random(255), R+random(255));
  fill(R, R+random(255), R+random(255));
  
  curve(width-circlex, circley, width-(circlex+newx), circley+newy, width-(circlex+newx*PI/4), circley+newy*PI/4, width-(circlex), circley+newy);
  curve(width-circley, circlex, width-(circley+newy), circlex+newx, width-(circley+newy*PI/4), circlex+newx*PI/4, width-(circley+newy), circlex);
  
  R = colour*random(4)%255;
  stroke(R, R+random(255), R+random(255));
  fill(R, R+random(255), R+random(255));
  
  curve(width-circlex, height-circley, width-(circlex+newx), height-(circley+newy), width-(circlex+newx*PI/4), height-(circley+newy*PI/4), width-(circlex), height-(circley+newy));
  curve(width-circley, height-circlex, width-(circley+newy), height-(circlex+newx), width-(circley+newy*PI/4), height-(circlex+newx*PI/4), width-(circley+newy), height-(circlex));
  
  R = colour*random(4)%255;
  stroke(R, R+random(255), R+random(255));
  fill(R, R+random(255), R+random(255));
  
  curve(circlex, height-circley, (circlex+newx), height-(circley+newy), (circlex+newx*PI/4), height-(circley+newy*PI/4), (circlex), height-(circley+newy));
  curve(circley, height-circlex, (circley+newy), height-(circlex+newx), (circley+newy*PI/4), height-(circlex+newx*PI/4), (circley+newy), height-(circlex));
}
