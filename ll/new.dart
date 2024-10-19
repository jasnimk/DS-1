import 'dart:io';

class Node {
  Node? next;
  int? data;

  Node(this.data);
}

class LinkedList {
  Node? head;
  List l1 = [];

  void append(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }

      current?.next = newnode;
    }
    print(l1);
  }

  void delete(int data) {}
  void mid() {}

  void printlist() {
    Node? current = head;
    while (current != null) {
      l1.add(current.data);
      stdout.write('${current.data}->');
      current = current.next;
    }
    stdout.write('null');
    print(l1);
    print('middle element:${l1[l1.length ~/ 2]}');
  }
}

void main() {
  LinkedList list = LinkedList();
  list.append(30);
  list.append(32);
  list.append(40);
  list.printlist();
}
