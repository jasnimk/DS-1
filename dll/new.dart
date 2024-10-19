import 'dart:io';

class Node {
  int data;
  Node? next;
  Node({required this.data});
}

class CircularLinkedList {
  Node? head;
  void append(int data) {
    Node newnode = Node(data: data);
    if (head == null) {
      head = newnode;
      newnode.next = head;
    } else {
      Node? current = head;
      while (current?.next != head) {
        current = current?.next;
      }
      current?.next = newnode;
      newnode.next = head;
    }
  }

  void display() {
    Node? current = head;
    if (current == null) {
      print('empty list');
    } else {
      do {
        stdout.write('${current?.data}->');
        current = current?.next;
      } while (current != head);
    }
    print('HEAD');
  }

  void array() {
    List<int> l1 = [1, 2, 3, 4, 5, 6, 7];
    for (int val in l1) {
      append(val);
    }
  }
}

void main() {
  CircularLinkedList list = CircularLinkedList();
  list.append(78);
  list.append(45);
  list.array();
  list.display();
}
