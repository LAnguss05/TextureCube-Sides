//Angus Liu          
//Texture Cube          
//jan 11          
          
float rotx, roty;          
PImage diamond;          
          
          
void setup () {          
          
size (800, 800, P3D);          
diamond= loadImage ("MicrosoftTeams-image.png");          
textureMode(NORMAL);          
}          
          
          
          
          
void draw () {          
background (0);          
pushMatrix ();          
translate (width/2, height/2, 0);          
scale (200);          
rotateX(rotx);          
rotateY(roty);          
          
noStroke ();          
          
beginShape (QUADS);          
texture (diamond);          
          
//top          
//x, y, z, texturex, texturey          
vertex(0, 0, 0, 0, 0 );          
vertex(1, 0, 0, 1, 0);          
vertex(1, 0, 1, 1, 1);          
vertex(0, 0, 1, 0, 1);          
          
          
          
          
//bottom          
vertex(0, 1, 0, 0, 0 );          
vertex(1, 1, 0, 1, 0);          
vertex(1, 1, 1, 1, 1);          
vertex(0, 1, 1, 0, 1);          
          
          
          
//front 1          
vertex (0, 0, 0, 0, 0);          
vertex(1, 0, 0, 1, 0);          
vertex(1, 1, 0, 1, 1);          
vertex(0, 1, 0, 0, 1);          
          
          
          
//back          
vertex (0, 0, 1, 0, 0);          
vertex(1, 0, 1, 1, 0);          
vertex(1, 1, 1, 1, 1);          
vertex(0, 1, 1, 0, 1);          
          
          
//left          
vertex (0, 0, 0, 0, 0);          
vertex(0, 0, 1, 1, 0);          
vertex(0, 1, 1, 1, 1);          
vertex(0, 1, 0, 0, 1);          
//right          
vertex (1, 0, 0, 0, 0);          
vertex(1, 0, 1, 1, 0);          
vertex(1, 1, 1, 1, 1);          
vertex(1, 1, 0, 0, 1);          
endShape();          
popMatrix ();          
}          
          
          
void mouseDragged () {          
          
rotx= rotx+ (pmouseY - mouseY ) *0.01;          
roty= roty+ (pmouseX-mouseX) * -0.01;          
}          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
