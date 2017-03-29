import controlP5.*;

ControlP5 cp5;


void setup(){
  size(displayWidth,displayHeight);
  strokeCap(ROUND);
  cp5 = new ControlP5(this);  
}
int[] points=new int[]{100,100,100,400,300,400};

void draw(){
  int curveRadius=5;  
  //int ellipseWidth=10;
  background(0);
  noFill();
  stroke(255,0,0);
  strokeWeight(10);
  beginShape();  
  PVector prev=null;
  
  for(int i=0; i+1<points.length; i+=2){
    PVector current=new PVector(points[i],points[i+1]);
    
    if(prev!=null){
        float absDegrees=abs(degrees(PVector.angleBetween(prev,current)));
        if(absDegrees<=45){
           bezierVertex(80, 0, 80, 75, 30, 75);
        }else if(absDegrees<=90){
          
        }else{
        }       
    }else{     
      vertex(points[i],points[i+1]);
    }    
    prev=current;
  }
  
  //if(points.length>2){
  //    vertex(points[points.length-2],points[points.length-1]);
  //}
  //line(width/2-300, height/2-300, width/2,height/2);
  endShape();
  //fill(255,200);
  //noStroke();
  
  //for(int i=0; i<=300; i+=spacing){
  //  ellipse(width/2-300+i,height/2-300+i,ellipseWidth,ellipseWidth);  
  //}  
}

public void controlEvent(ControlEvent theEvent) {
  println("got a control event from controller with id "+theEvent.getId());
}