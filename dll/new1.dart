import 'dart:io';

class Node {
  int data;
  Node? next;
  Node? prev;
  Node({required this.data});
}

class DoubleLinkedList {
  Node? head;
  Node? tail;

  void append(int data) {
    Node? newnode = Node(data: data);
    if (head == null) {
      head = newnode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }

      current?.next = newnode;
      newnode.prev = current;
      tail = newnode;
    }
  }

  void array() {
    List<int> l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    for (int val in l1) {
      append(val);
    }
  }

  void display() {
    Node? current = head;
    stdout.write('Null<->');
    while (current != null) {
      stdout.write('${current.data}<->');
      current = current.next;
    }
    stdout.write('Null\n');
    print(tail?.data);
  }
}

void main() {
  DoubleLinkedList dlist = DoubleLinkedList();
  dlist.append(60);
  dlist.append(78);
  dlist.array();
  dlist.display();
}
