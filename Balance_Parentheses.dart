void main() {
  print(isBalanced("((abcd))")); //true
  print(isBalanced("()")); // true
  print(isBalanced("(())")); // true
  print(isBalanced("()()")); // true
  print(isBalanced(")(")); // false
  print(isBalanced("")); // true
  print(isBalanced("(()))")); //false
}

bool isBalanced(String input) {
  List<String> stack = [];
  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}
