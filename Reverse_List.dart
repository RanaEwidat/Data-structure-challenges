void main() {
  List<int> numbers = [100, 200, 300, 400, 500];
  List<int> reversedNumbers = reverseList(numbers);
  print("List: $numbers");
  print("Reversed List: $reversedNumbers");
}

List<T> reverseList<T>(List<T> list) {
  List<T> stack = [];
  for (var item in list) {
    stack.add(item);
  }
  List<T> reversedList = [];
  while (stack.isNotEmpty) {
    reversedList.add(stack.removeLast());
  }
  return reversedList;
}
