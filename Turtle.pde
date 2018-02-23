class Turtle {
  float unitDistance, unitAngle;
  
  Turtle(float distance, float angle) {
    unitDistance = distance;
    unitAngle = angle;
  }
  
  void execute(String program) {
    for (int i = 0; i < program.length(); i++) {
      char command = program.charAt(i);
      if ('A' <= command && command <= 'T') {
        // draw forward
        line(0, 0, unitDistance, 0);
        translate(unitDistance, 0);
      } else if ('a' <= command && command <= 't') {
        // move forward
        translate(unitDistance, 0);
      } else if (command == '+') {
        // turn left
        rotate(-unitAngle);
      } else if (command == '-') {
        // turn right
        rotate(unitAngle);
      } else if (command == '[') {
        // push
        pushMatrix();
      } else if (command == ']') {
        // pop
        popMatrix();
      }
    }
  }
}