void main() {
  Node<int> head = Node(1, Node(2, Node(3, Node(4, Node(5)))));
  print("Linked List:");
  print_linked_list(head);

  print("\nReversed Linked List:");
  print_in_reverse(head);
}

//********** */
class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value, [this.next]);
}

//********* */
void print_linked_list<T>(Node<T>? node) {
  while (node != null) {
    print(node.value);
    node = node.next;
  }
}

void print_in_reverse<T>(Node<T>? node) {
  if (node == null) {
    return;
  }
  print_in_reverse(node.next);
  print(node.value);
}
