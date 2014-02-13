import processing.pdf.*;


void setup() {
  size(1000, 773);

  fill(0);

  smooth();
  beginRecord(PDF, "wet_sharp.pdf");

  background(0);
}

void draw() {
  float  gap=width/50;

  strokeWeight(3);
  stroke(0);
  noFill();
  pushMatrix();
  translate(width/11, 1.8*height/3);
  beginShape();
  fill(255);
  scale(1.1, 1.2);
  for (int i=0;i<20;i++) {

    if (i==0) {
      vertex(0, 0);
    }

    if (i==1) {
      vertex(width/9, -height/10);
      bezierVertex(width/9, -height/10, width/9+gap/4, -height/10-gap/4, width/9+gap/2, -height/9.7);
    }


    if (i==2) {
      vertex(i*width/10, -height/20);
      bezierVertex(i*width/10, -height/20, i*width/10+gap/4, -height/20+gap/4, i*width/10+gap/2, -height/20);
    }

    if (i==3) {
      vertex(i*width/10, -1.5*height/10);
      bezierVertex(i*width/10, -1.5*height/10, i*width/10+gap/4, -1.5*height/10-gap/4, i*width/10+gap/2, -1.5*height/10);
    }

    if (i==4) {
      vertex(3.9*width/10, -height/20);
      bezierVertex(3.9*width/10, -height/20, 3.9*width/10+gap/4, -height/20+gap/4, 3.9*width/10+gap/2, -height/20);
    }

    if (i==5) {
      vertex(4.5*width/10, -height/10);
      bezierVertex(4.5*width/10, -height/10, 4.5*width/10+gap/4, -height/10-gap/4, 4.5*width/10+gap/2, -height/10);
    }

    if (i==6) {
      vertex(5*width/10, -height/14);
      bezierVertex(5*width/10, -height/14, 5*width/10+gap/4, -height/14+gap/4, 5*width/10+gap/2, -height/14.5);
    }

    if (i==7) {
      vertex(5.3*width/10, -height/12);
      bezierVertex(5.3*width/10, -height/12, 5.3*width/10+gap/4, -height/12-gap/4.2, 5.3*width/10+gap/2, -height/12);
    }

    if (i==8) {
      vertex(6*width/10, -height/30);
      bezierVertex(6*width/10, -height/30, 6*width/10+gap/4, -height/30+gap/4, 6*width/10+gap/2, -height/31);
    }

    if (i==9) {
      vertex(6.5*width/10, -height/18);
      bezierVertex(6.5*width/10, -height/18, 6.5*width/10+gap/4, -height/18-gap/4, 6.5*width/10+gap/2, -height/18);
    }

    if (i==10) {

      vertex(7.3*width/10, gap/2);
      //bezierVertex(7.5*width/10, 0, 7.5*width/10+gap/2, gap/2,7.5*width/10+gap, 0);
    }

    if (i==11) {
      bezierVertex(7.3*width/10, gap/2, 13.2*width/20, -gap, 3*width/5, gap);
    }

    if (i==12) {
      // bezierVertex(2*width/5, gap, width/2, gap*3.5, 3*width/5, gap);
      bezierVertex(3*width/5, gap, width/2, gap*3.5, 2*width/5, gap);
    }

    if (i==13) {
      bezierVertex(2*width/5, gap, 13*width/40, -gap, width/4, gap/2);
    }
    if (i==14) {

      bezierVertex(width/4, gap/2, 7*width/40, gap*2, width/10, gap/2);
    }

    if (i==15) {
      bezierVertex(width/10, gap/2, width/22, -gap/1.5, 0, 0);
    }
  }

  endShape();





  //eyes

  beginShape();


  fill(0);
  strokeWeight(4);
  vertex(width/8, gap/1.3);
  vertex(width/10, -1.5*gap);
  vertex(width/9+gap/4, -height/11.5);
  vertex(2*width/10, -height/35);
  vertex(2*width/10-gap/2, gap);
  bezierVertex(2*width/10-gap/2, gap, 13*width/80, gap+gap/5, width/8, gap/1.3);


  endShape();

  //nose
  beginShape();


  strokeWeight(4);
  vertex(3*width/10+gap/4, -1.3*height/10);
  vertex(3.65*width/10, -height/18);
  vertex(3*width/10+5*gap/4, -gap/2);
  vertex(3*width/10+gap/4, -1.3*height/10);



  endShape();

  //lips
  beginShape();


  strokeWeight(4);
  vertex(4.5*width/10+gap/2, -height/12);
  vertex(5*width/10, -height/18);

  vertex(5*width/10-gap/2, 0);

  vertex(4.5*width/10+gap/2, -height/12);




  endShape();

  beginShape();


  vertex(5.3*width/10+gap/2, -height/15);
  vertex(5.8*width/10, -height/30);

  vertex(width/2+gap/2, gap/4);
  vertex(5.3*width/10+gap/2, -height/15);





  endShape();

  stroke(255);
  fill(255);
  beginShape();

  for (int i=0;i<15;i++) {
    if (i==0) {
      vertex(-gap/2, -gap/2);
      bezierVertex(-gap/2, -gap/2, -2*gap, 1.5*gap, 0, gap);
    }

    if (i==1) {
      bezierVertex(0, +gap, width/22, -gap/1.5+gap, width/10, gap/2+gap);
    }

    if (i==2) {
      bezierVertex(width/10, gap/2+gap, 7*width/40, gap*2+gap, width/4, gap/2+gap);
    }

    if (i==3) {
      bezierVertex(width/4, gap/2+gap, 13*width/40, -gap+gap, 2*width/5, gap+gap);
    }


    if (i==4) {
      bezierVertex(2*width/5, 2*gap, width/2, gap*4.5, 3*width/5, 2*gap);
    }

    if (i==5) {
      bezierVertex(3*width/5, 2*gap, 13.2*width/20, 0, 7.3*width/10, gap/2+gap);
    }



    if (i==6) {
      bezierVertex(7.3*width/10, gap/2+gap, 7.3*width/10+3*gap, 2.5*gap, 7.3*width/10+gap/2, -gap/5);
    }



    if (i==7) {
      bezierVertex(7.3*width/10+gap/10, -gap/3, 7.5*width/10+3*gap+gap/3, 3*gap, 7.3*width/10, gap/2+gap+gap/3);
    }

    if (i==8) {

      //bezierVertex(2*width/5,2*gap,width/2,gap*4.5,3*width/5,2*gap);  
      bezierVertex(7.3*width/10, 11*gap/6, 13.2*width/20, gap/2, 3*width/5, 2*gap+gap/2);
    }

    if (i==9) {

      //bezierVertex(2*width/5,2*gap,width/2,gap*4.5,3*width/5,2*gap);  
      bezierVertex(3*width/5, 2*gap+gap/2, width/2, gap*4.5+gap/2, 2*width/5, 2*gap+gap/2);
    }

    if (i==10) {

      //bezierVertex(width/4,gap/2+gap,13*width/40,-gap+gap,2*width/5,gap+gap);  
      bezierVertex(2*width/5, 2*gap+gap/2, 13*width/40, -gap+gap+gap/2, width/4, 2*gap);
    }

    if (i==11) {

      // bezierVertex(width/10,gap/2+gap,7*width/40,gap*2+gap,width/4,gap/2+gap);  
      bezierVertex(width/4, 2*gap, 7*width/40, gap*2+gap+gap/2, width/10, 2*gap);
    }

    if (i==12) {

      //  bezierVertex(0,+gap,width/22,-gap/1.5+gap,width/10,gap/2+gap);  
      bezierVertex(width/10, 2*gap, width/22, -gap/1.5+gap+gap/2, 0, gap+gap/3);
    }

    if (i==13) {

      //  bezierVertex(-gap/2,-gap/2,-2*gap,1.5*gap,0,gap);  
      bezierVertex(0, gap+gap/3, -2.5*gap, 1.5*gap+gap/2, -gap/2, -gap/2);
    }
  }


  endShape();  





  beginShape();
  for (int i=0;i<10;i++) {

    if (i==0) {
      vertex(0, 3*gap);
      bezierVertex(0, 3*gap, width/22, -gap/1.5+3*gap, width/10, gap/2+3*gap);
    }
    if (i==1) {


      bezierVertex(width/10, gap/2+3*gap, 7*width/40, gap*2+3*gap, width/4, gap/2+3*gap);
    }

    if (i==2) {
      bezierVertex(width/4, gap/2+3*gap, 13*width/40, -gap+3*gap, 2*width/5, gap+3*gap);
    }


    if (i==3) {
      bezierVertex(2*width/5, 4*gap, width/2, gap*6.5, 3*width/5, 4*gap);
    }

    if (i==4) {
      bezierVertex(3*width/5, 4*gap, 13.2*width/20, 2*gap, 7.3*width/10, gap/2+2.9*gap);
    }

    if (i==5) {
      bezierVertex(7.3*width/10, gap/2+3*gap, 13.2*width/20, 2*gap+gap/3.5, 3*width/5, 4*gap+gap/3);
    }

    if (i==6) {
      bezierVertex(3*width/5, 4*gap+gap/3, width/2, gap*6.5+gap/3, 2*width/5, 4*gap+gap/3);
    }

    if (i==7) {
      bezierVertex(2*width/5, 4*gap+gap/3, 13*width/40, -gap+3*gap+gap/3, width/4, gap/2+3*gap+gap/3);
    }

    if (i==8) {
      // bezierVertex(width/10,gap/2+3*gap,7*width/40,gap*2+3*gap,width/4,gap/2+3*gap);  
      bezierVertex(width/4, gap/2+3*gap+gap/3, 7*width/40, gap*2+3*gap+gap/3.5, width/10, gap/2+3*gap+gap/3.5);
    }

    if (i==9) {

      bezierVertex(width/10, gap/2+3*gap+gap/3.5, width/22, -gap/1.5+3*gap+gap/3.5, 0, 3*gap);
    }
  }

  endShape();

  //tears
  stroke(0);
  strokeWeight(4);
  //noFill();
  beginShape();
  vertex(width/8, gap*2.6);
  bezierVertex(width/8, gap*2.5, width/6.1, 2.8*gap, width/7, gap*4.5);  
  bezierVertex(width/7, gap*4.5, width/9, height/5, 13*width/80, height/5);  
  bezierVertex(13*width/80, height/5, width/4.9, height/5, width/5.8, gap*4.5);  
  bezierVertex(width/5.8, gap*4.5, width/6.5, 2.75*gap, width/5, gap*2.76);  

  endShape();



  noFill();
  popMatrix();

  pushMatrix();
  stroke(255);

  fill(255);
  translate(width/2, height/2);
  
  for(int i=0;i<6;i++){
  
  beginShape();
  vertex(-1.1*gap, -height/2.3);
  vertex(1.1*gap, -height/2.3);
    vertex(0, -height/2.95);
vertex(-1.1*gap, -height/2.3);

endShape();
rotate(radians(16.3));

  }

popMatrix();  

pushMatrix();
  stroke(255);

  fill(255);
  translate(width/2, height/2);
  
  for(int i=0;i<6;i++){
  
  beginShape();
  vertex(-1.1*gap, -height/2.3);
  vertex(1.1*gap, -height/2.3);
    vertex(0, -height/2.95);
vertex(-1.1*gap, -height/2.3);

endShape();
rotate(radians(-15.8));

  }
  
  
  
popMatrix();  


    pushMatrix();
     translate(width/2, height/2);
   strokeWeight(10);
   noFill();

  beginShape();
  vertex(-width/4, -2.5*gap);
  bezierVertex(-width/4, -2.5*gap, -width/5, -height/3, 0, -height/3);  
  
    bezierVertex(  0, -height/3, width/5, -height/3, width/4, -2*gap);  
  
  endShape();


 
  
  

  
  popMatrix();


  endRecord();
}

