import processing.pdf.*;
int d;

void setup() {
  size(800, 800);
  background(255);
  smooth();
  beginRecord(PDF, "first.pdf"); 
  
  //ellipse
  for(int y=0;y<width;y++){
    for(int x=0;x<height;x++){
    if(x==400&&y==150||x==355&&y==165||x==445&&y==165||x==300&&y==195||x==500&&y==195
    ||x==270&&y==250||x==530&&y==250||x==290&&y==310||x==510&&y==310||x==400&&y==340){
      if(x==400&&y==150){
        d=50;
      }
      
      if(x==355&&y==165||x==445&&y==165){
        d=70;
  
      }
      
      if(x==300&&y==195||x==500&&y==195){
        d=95;
      }
      
      if(x==270&&y==250||x==530&&y==250){
        d=110;
      }
      
       if(x==290&&y==310||x==510&&y==250){
        d=130;
      }
       if(x==400&&y==340){
        d=150;
      }
ellipse(x, y, d, d);
    }
  
    }
  
  }
  
  
  //rectangle
    
 /*  for(int x=0;x<width;x++){
      for(x=400;x<630;x=x+40){
      for(int y=0;y<height;y++){
      if(y==185||y==235){
   
          rect(x,y,30,40);
          
   }
    }
   }
   }
 */
  endRecord();
}

void draw() {
  // Draw something good here
  
}
