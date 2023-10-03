Dice one;
void setup() {
  size(500, 500);
}

void draw() {
  fill(20);
  rect(0, 0, 500, 500);
  one = new Dice(0, 0);
  int total = one.sum;
  int ichi = one.uno;
  int ni = one.two;
  int san = one.three;
  int shi = one.four;
  int go = one.five;
  int roku = one.six;
  for (int j = 25; j < 500; j+=50) {
    for (int i = 25; i < 500; i+=50) {
        one = new Dice(i, j);
        one.roll();
        one.show();
        total = total + one.dot;
        ichi = ichi + one.uno;
        ni = ni + one.two;
        san = san + one.three;
        shi = shi + one.four;
        go = go + one.five;
        roku = roku + one.six;
    }
    }
  System.out.println(total);
  textAlign(CENTER);
  fill(255);
  text("Total: " + total, 250, 200);
  text("ones: " + ichi, 225, 225);
  text("twos: " + ni, 225, 250);
  text("threes: " + san, 225, 275);
  text("fours: " + shi, 275, 225);
  text("fives: " + go, 275, 250);
  text("sixs: " + roku, 275, 275);
}

void mousePressed() {
  redraw();
  loop();
}
void keyTyped() {
  noLoop();
}
class Dice {
  int myX, myY, dot, sum, six, five, four, three, two, uno;


  Dice(int x, int y) {
    myX = x;
    myY = y;
    dot = 0;
    sum = 0;
    six = 0;
    five = 0;
    four = 0;
    three = 0;
    two = 0;
    uno = 0;
  }

  void roll() {
    dot = 1+(int)(Math.random()*6);
  }
  void show() {
    int diam = 50;
    int r =(int)(Math.random()*50);
    noStroke();
    while (diam > 0) {
      fill(r, r, r);
      rect(myX-25, myY-25, diam, diam, 40);
      diam--;
      r--;
    }
    fill(255, 0, 0);
    if (dot == 1) {
      ellipse(myX, myY, 10, 10);
      uno++;
    } else if (dot == 2) {
      ellipse(myX - 10, myY, 10, 10);
      ellipse(myX + 10, myY, 10, 10);
      two++;
    } else if (dot == 3) {
      ellipse(myX, myY, 10, 10);
      ellipse(myX + 10, myY+ 10, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      three++;
    } else if (dot == 4) {
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      four++;
    } else if (dot == 5) {
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX, myY, 10, 10);
      five++;
    } else {
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX - 10, myY, 10, 10);
      ellipse(myX + 10, myY, 10, 10);
      six++;
    }
  }

}
