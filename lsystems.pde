String axiom;
String rules;
int n;
float d;
float alpha;
float x0;
float y0;
float h0;

void setup() {
  size(800, 800);
  
  //initSerpinskiCurve();
  //initKochSnowflake();
  initDragonCurve();
  //initGosperCurve();
  //initIslandsAndLakes();
  //initPlant1();
  //initPlant2();
  //initPlant3();
  //initPlant4();
  //initPlant5();
  //initPlant6();
  
  Grammar grammar = new Grammar(axiom);
  for (String rule: split(rules, "; ")) {
    grammar.addRule(rule.charAt(0), rule.substring(3));
  }
  for (int i = 0; i < n; i++) {
    grammar.applyRules();
  }

  Turtle turtle = new Turtle(d, radians(alpha));
  translate(x0, y0);
  rotate(radians(h0));
  turtle.execute(grammar.getWord());
}

void draw() {
}


// TODO: separate code and data. JSON files?

void initSerpinskiCurve() {
  axiom = "F";
  rules = "F->G-F-G; G->F+G+F";
  n = 8;
  d = 3;
  alpha = 60;
  x0 = 10;
  y0 = 790;
  h0 = 0;
}

void initKochSnowflake() {
  axiom = "F++F++F";
  rules = "F->F-F++F-F";
  n = 5;
  d = 2.8;
  alpha = 60;
  x0 = 50;
  y0 = 600;
  h0 = 0;
}

void initDragonCurve() {
  axiom = "F";
  rules = "F->F+G+; G->-F-G";
  n = 12;
  d = 8;
  alpha = 90;
  x0 = 600;
  y0 = 500;
  h0 = 0;
}

void initGosperCurve() {
  axiom = "F";
  rules = "F->F+G++G-F--FF-G+; G->-F+GG++G+F--F-G";
  n = 5;
  d = 5;
  alpha = 60;
  x0 = 620;
  y0 = 700;
  h0 = 0;
}

void initIslandsAndLakes() {
  axiom = "F+F+F+F";
  rules = "F->F+f-FF+F+FF+Ff+FF-f+FF-F-FF-Ff-FFF; f->ffffff";
  n = 3;
  d = 2;
  alpha = 90;
  x0 = 180;
  y0 = 620;
  h0 = 0;
}

void initPlant1() {
  axiom = "F";
  rules = "F->F[+F]F[-F]F";
  n = 5;
  d = 3;
  alpha = 25.7;
  x0 = 400;
  y0 = 790;
  h0 = -90;
}

void initPlant2() {
  axiom = "F";
  rules = "F->F[+F]F[-F][F]";
  n = 5;
  d = 12;
  alpha = 20;
  x0 = 400;
  y0 = 790;
  h0 = -90;
}

void initPlant3() {
  axiom = "F";
  rules = "F->FF-[-F+F+F]+[+F-F-F]";
  n = 4;
  d = 13;
  alpha = 20;
  x0 = 400;
  y0 = 790;
  h0 = -90;
}

void initPlant4() {
  axiom = "X";
  rules = "X->F[+X]F[-X]+X; F->FF";
  n = 7;
  d = 3;
  alpha = 20;
  x0 = 400;
  y0 = 790;
  h0 = -90;
}

void initPlant5() {
  axiom = "X";
  rules = "X->F[+X][-X]FX; F->FF";
  n = 7;
  d = 3;
  alpha = 25.7;
  x0 = 400;
  y0 = 790;
  h0 = -90;
}

void initPlant6() {
  axiom = "X";
  rules = "X->F[-X][X]F[-X]+FX; F->FF";
  n = 6;
  d = 4.75;
  alpha = 22.5;
  x0 = 400;
  y0 = 790;
  h0 = -90;
}