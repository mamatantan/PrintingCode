import processing.pdf.*;
int d;
int w;
int h;
int x1,y1;
int x2,y2;

void setup() {
  size(800, 800);
  background(255);
  smooth();
  beginRecord(PDF, "ice_cream.pdf"); 
}

void draw(){
  //ellipse
  for(int y=0;y<width;y++){
    for(int x=0;x<height;x++){
    if(x==400&&y==150||x==355&&y==165||x==445&&y==165||x==300&&y==195||x==500&&y==195
    ||x==270&&y==250||x==530&&y==250||x==290&&y==310||x==510&&y==310||x==400&&y==340){
      if(x==400&&y==150){
        strokeWeight(4);
        d=50;
      }
      
      if(x==355&&y==165||x==445&&y==165){
         fill(0);
        d=70;
  
      }
      
      if(x==300&&y==195||x==500&&y==195){
           strokeWeight(4);
         fill(255);
        d=95;
      }
      
      if(x==270&&y==250||x==530&&y==250){
         fill(0);
        d=110;
      }
      
       if(x==290&&y==310||x==510&&y==310){
         strokeWeight(4);
          fill(255);
        d=130;
      }
       if(x==400&&y==340){
         fill(0);
        // stroke(255);
        d=150;
      }
ellipse(x, y, d, d);

    }
  
    }
  
  }
  
  
  //rectangle
  pushMatrix();
   translate(445,270);
       rotate(-PI/3);
  for(int y=-200;y<height;y++){
    int x;
if(y==-106||y==-98||y==-48){ 

if(y==-98||y==-48){  
   for(x=10;x<180;x=x+40){
    
   
   
    
        w=30;
        h=40;
       fill(0);
       strokeWeight(3);
       stroke(255);
           drawRect(x,y,w,h);  
      }
     
 
}else{
  x=0;
  w=210;
  h=106;
   //noStroke();
   stroke(255);
  drawRect(x,y,w,h);  
}

   
    
 
   }
  }
   

    
     
   
   popMatrix();
          
          
   //triangle
   
   for(int x=0;x<width;x++){
      for(int y=0;y<height;y++){
        if(x==400&&y==700||x==573&&y==330){
          
         if(x==400&&y==700){
           
           
                
                
          
                 
          x1=227;
          y1=330;
         x2=484;
          y2=520;
          
          }
       
          
          
          
          if(x==573&&y==330){
          x2=484;
          y2=520;
        x1=355;
      y1=425;  
          }
          
            fill(255);
       strokeWeight(3);
       stroke(0);
          triangle(x,y,x1,y1,x2,y2);
        }
        }
   }      
      
  
   
 
  endRecord();
}



void drawRect(int x,int y,int _w,int _h){
rect(x,y,_w,_h); 
}

/*void drawCircle(int x,int y,int d){
  ellipse(x,y,d,d);
}
*/
