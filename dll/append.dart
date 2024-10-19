import 'dart:io';

class Node {
  Node? next;
  Node? prev;
  int? data;

  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;

  void appendFirst(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = tail = newnode;
    } else {
      newnode.next = head;
      head?.prev = newnode;
      head = newnode;
    }
  }

  void appendLast(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = tail = newnode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newnode;
      newnode.prev = current;
    }
  }

  void insertAfter(int data, int n) {
    print('insert after: $n');
    Node newnode = Node(data);
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? current = head;
    while (current != null && current.data != n) {
      current = current.next;
    }
    if (current == null) {
      print('value not found!');
    }
    Node? later = current?.next;
    current?.next = newnode;
    newnode.prev = current;
    newnode.next = later;
  }

  void insertBefore(int data, int n) {
    print('insert before:$n');
    Node newnode = Node(data);
    if (head == null) {
      print('list is empty!');
    }
    Node? current = head;
    while (current != null && current.data != n) {
      current = current.next;
    }
    if (current == head) {
      newnode.next = head;
      head?.prev = newnode;
      head = newnode;
      return;
    }
    if (current == null) {
      print('no such elements!');
    }
    Node? befrprev = current?.prev;
    befrprev?.next = newnode;
    current?.prev = newnode;
    newnode.next = current;
    newnode.prev = befrprev;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      stdout.write('${current.data}<->');
      current = current.next;
    }
    stdout.write('\n');
  }

  void deleteAfter(int n) {
    print('delete after:$n');

    if (head == null) {
      print('list is empty');
      return;
    }
    Node? current = head;
    while (current != null && current.data != n) {
      current = current.next;
    }
    if (current == null) {
      print('/nno such element');
      return;
    }
    current.next = current.next?.next;
    current.next?.prev = current;
  }

  void deleteBefore(int n) {
    print('delete before $n');
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? current = head;
    while (current != null && current.data != n) {
      current = current.next;
    }
    if (current == null) {
      print('no such elemet');
      return;
    }
    if (current == head) {
      print('list is too short!');
    }
    if (current.prev == head) {
      head = current;
    }
    current.prev = current.prev?.prev;
    current.prev?.next = current;
  }

  void middle() {
    print('\n After deleting middle element');
    if (head == null || head?.next == null) {
      print('list is empty or too short');
      return;
    }
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    print(slow?.data);
    slow?.prev?.next = slow.next;
  }
}

void main() {
  DoubleLinkedList list = DoubleLinkedList();
  list.appendFirst(40);
  list.appendFirst(50);
  list.appendFirst(300);
  list.appendFirst(400);
  list.appendLast(46);
  list.appendFirst(90);
  list.appendLast(43);
  list.appendLast(78);
  list.printList();
  list.insertAfter(99, 78);
  list.printList();
  list.insertBefore(1000, 90);
  list.printList();
  list.deleteAfter(1000);
  list.printList();
  list.deleteBefore(1000);
  list.printList();
  list.middle();
  list.printList();
}
