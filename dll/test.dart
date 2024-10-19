class Node {
  int data;
  Node? next;

  Node({required this.data});
}

class LinkedList {
  Node? head;
  Node? tail;

  void add(int data) {
    Node? new_node = Node(data: data);
    if (head == null) {
      head = tail = new_node;
    } else {
      tail?.next = new_node;
      tail = new_node;
    }
  }

  void array() {
    List l1 = [1, 3, 5, 2, 3, 6, 7];
    for (int val in l1) {
      add(val);
    }
  }

  void rev() {
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? later;
    Node? prev;
    Node? current = head;
    while (current != null) {
      later = current.next;
      current.next = prev;
      prev = current;
      current = later;
    }
    head = prev;
  }

  void printlist() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.array();
  list.printlist();
  list.rev();
  list.printlist();
}
