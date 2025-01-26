void main() {
  Node<int> head = Node(1, Node(2, Node(3, Node(4, Node(5)))));
  Node<int>? middle_node = find_middle_node(head);

  print("Linked List:");
  print_linked_list(head);

  if (middle_node != null) {
    print(">> Middle Node: ${middle_node.value}");
  } else {
    print("The list is empty.");
  }
}

class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

Node<T>? find_middle_node<T>(Node<T>? head) {
  Node<T>? F1 = head; //مؤشر يتحرك يتحرك خطوة
  Node<T>? F2 = head; //مؤشر يتحرك خطوتين

  while (F2 != null && F2.next != null) {
    F1 = F1?.next;
    F2 = F2.next?.next;
  }

  return F1;
}

void print_linked_list<T>(Node<T>? node) {
  while (node != null) {
    print(node.value);
    node = node.next;
  }
}
