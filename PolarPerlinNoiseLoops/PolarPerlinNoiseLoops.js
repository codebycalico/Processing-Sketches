// Following Coding Train tutorial https://www.youtube.com/watch?v=ZI1dmHv3MeM

// Perlin noise always has a range between 0 and 1
// No negative values in the perlin noise space

// 0.5 - 0.7 is like a human being drew a circle
//let noiseMax = 0.7;
let slider;

function setup() {
  createCanvas(600, 600);
  slider = createSlider(0, 10, 0.1);
}

function draw() {
  background(0);
  translate(width/2, height/2);
  
  stroke(255);
  noFill();
  let noiseMax = slider.value();
 
  beginShape();
  // a is the amount of vertices drawn, larger number is fewer vertices
  for(let a = 0; a < TWO_PI; a+= 0.1) {
    // getting the perlin noise value at the x and y offset.
    // cos and sin are from -1 to 1, but there are no negative
    // perlin noise values. must map the given cos and sin to 
    // the perlin noise values.
    let xoffset = map(cos(a), -1, 1, 0, noiseMax);
    let yoffset = map(sin(a), -1, 1, 0, noiseMax);
    let r = map(noise(xoffset, yoffset), 0, 1, 100, 200);
    let x = r * cos(a);
    let y = r * sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);
}
