void main() {
  Node<String>? head = Node("a",
      Node("b", Node("c", Node("b", Node("d", Node("b")))))); //الحرف b مكرر

  print(">>Linked List:");
  print_linked_list(head);

  head = removeOccurrences(head, "b");

  print("\n>>Linked List whithout occurrences:");
  print_linked_list(head);
}

class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

void print_linked_list<T>(Node<T>? head) {
  Node<T>? current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

Node<T>? removeOccurrences<T>(Node<T>? head, T value) {
  //ازالة القيم المتكررة
  while (head != null && head.value == value) {
    //اذا كان قيمة الراس مكررة
    head = head.next;
  }

  // إزالة العقدةالمكررة
  Node<T>? current = head;

  while (current != null && current.next != null) {
    if (current.next!.value == value) {
      current.next = current.next!.next;
    } else {
      current = current.next; // الانتقال إلى العقدة التالية
    }
  }

  return head;
}
