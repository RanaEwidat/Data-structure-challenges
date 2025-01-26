void main() {
  Node<int> head = Node(1, Node(2, Node(3, Node(4, Node(5)))));

  print("Linked List:");
  print_linked_list(head);

  Node<int>? reversedHead = reverse_linked_list(head);

  print("\nReversed Linked List:");
  print_linked_list(reversedHead);
}

//******************
class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

// طباعة السلسلة********************
void print_linked_list<T>(Node<T>? head) {
  Node<T>? current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

//عكس السلسلة*******************
Node<T>? reverse_linked_list<T>(Node<T>? head) {
  Node<T>? previous = null;
  Node<T>? current = head;

  while (current != null) {
    Node<T>? next = current.next; // حفظ العقدة التالية
    current.next = previous; // عكس اتجاه المؤشر
    previous = current; // تحريك المؤشر السابق
    current = next; // الانتقال إلى العقدة التالية
  }
  return previous; //العقدة الأخيرة تصبح راس السلسلة
}
