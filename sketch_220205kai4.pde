float dif = 1.0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;


float x;
float y;
float z;
boolean isPressed ;

void mousePressed(){
  isPressed = true;
}

void mouseReleased(){
  isPressed = false;
}

void setup(){
  size(800,800,P3D);
  noFill();
  stroke(0);
}

void draw(){
background(255);
rotateX(-0.5);
rotateY(0.5);

 if(keyPressed){
    if(key == '1'){
      angle1 = angle1 + dif;
    }
    
    if(key == '2'){
      angle2 = angle2 + dif;
    }
    
     if(key == '3'){
      angle3 = angle3 + dif;
    }
    
   if(key == '4'){
      angle1 = angle1 - dif;
    }
   
    if(key == '5'){
      angle2 = angle2 - dif;
    }
    
     if(key == '6'){
      angle3 = angle3 - dif;
    }
    
    
 }
 

fill(128,128,128);
//base
pushMatrix();
translate(370,400,50);
box(200);
popMatrix();

//block1
pushMatrix();
translate(300,200,200);
rotateY(radians(angle1));
box(100);
popMatrix();


//block2
pushMatrix();
translate(300,200,200);
rotateY(radians(angle1));

translate(0,0,200);
rotateZ(radians(angle2));
box(40,40,300);
popMatrix();

//block3
pushMatrix();
translate(300,200,200);
rotateY(radians(angle1));

translate(0,0,200);
rotateZ(radians(angle2));

translate(-50,0,120);
rotateX(radians(angle3));
box(150,30,30);
popMatrix();

//block4
pushMatrix();
translate(300,200,200);
rotateY(radians(angle1));

translate(0,0,200);
rotateZ(radians(angle2));

translate(-50,0,120);
rotateX(radians(angle3));

translate(-80,0,70);
box(30,30,200);
popMatrix();

//ball
z +=1;
if(isPressed==true){
circle();

}

if(isPressed==false){
  z=0;
}
  }
  
  
  void circle(){
    translate(300,200,200);
rotateY(radians(angle1));

translate(0,0,200);
rotateZ(radians(angle2));

translate(-50,0,120);
rotateX(radians(angle3));

translate(-80,0,180);
translate(0,0,z);
sphere(20);
  }
  
  
