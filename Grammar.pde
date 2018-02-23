class Grammar {
  String[] rules;
  String word;
  
  Grammar(String axiom) {
    rules = new String[256];
    word = axiom;
  }
  
  void addRule(char pred, String succ) {
    rules[pred] = succ;
  }
  
  void applyRules() {
    StringBuilder result = new StringBuilder();
    for (int i = 0; i < word.length(); i++) {
      if (rules[word.charAt(i)] != null) {
        result.append(rules[word.charAt(i)]);
      } else {
        result.append(word.charAt(i));
      }
    }
    word = result.toString();
  }
  
  String getWord() {
    return word;
  }
}