int count;

public void setup(){
    background(0);
    size(800,800);
    stroke(5, 223, 227);
    noFill();
    count = 0;
}

public void draw(){
    background(0);
    fractal(mouseX, mouseY, 300);
}

public void fractal(float x, float y, float length){
    strokeWeight(length / 40);
    ellipse(x, y, length, length);
    if(length > 100){
        fractal(x + (length / 2), y, length * 0.66666);
        fractal(x - (length / 2), y, length * 0.66666);
        fractal(x, y - (length / 2), length * 0.66666);
        fractal(x, y + (length / 2), length * 0.66666);
    }
}