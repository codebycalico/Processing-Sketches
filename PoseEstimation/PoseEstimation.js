// Using The Coding Train's tutorial video:
// https://www.youtube.com/watch?v=T99fNXTUUaQ&list=PLRqwX-V7Uu6YPSwT06y_AEYTqIwbeam3y&index=1
// Calico Randall
// August 25, 2025
// COCO dataset - common objects in context
// Good reference: Humans of AI and MoveNet blog post

let video;

let bodyPose;

function preload() {
  // The model is being loaded from the cloud (Google server somewhere)
  // Images processed on computer
  bodyPose = ml5.bodyPose("MoveNet");
}

function gotPoses(results) {
  console.log(results);
}

function setup() {
  createCanvas(640, 480);
  video = createCapture(VIDEO, {flipped: true});
  video.hide();
  
  bodyPose.detectStart(video, gotPoses);
}


function draw() {
  image(video, 0, 0);
}
