console.log("test1");

 var cvs = document.getElementById("canvas");
 var ctx = cvs.getContext("2d");

 //load images

 var bird = new Image();
 var bg = new Image();
 var fg = new Image();
 var pipeNorth = new Image();
 var pipeSouth = new Image();

 bird.src = "FlappyBird-JavaScript/images/bird.png";
 bg.src = "FlappyBird-JavaScript/images/bg.png";
 fg.src = "FlappyBird-JavaScript/images/fg.png";
 pipeNorth.src = "FlappyBird-JavaScript/FlappyBird-JavaScript/images/pipeNorth.png";
 pipeSouth.src = "FlappyBird-JavaScript/images/pipeSouth.png";


 // draw images
 function draw(){

   ctx.drawImage(bg,0,0)

 };

 draw();

 console.log("test2");
