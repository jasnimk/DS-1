import 'dart:io';

class Node {
  late int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
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
  }

  void insertAtFirst(int data) {
    print('insert at first');
    Node newnode = Node(data);
    newnode.next = head;
    head = newnode;
  }

  void insertAtLast(int data) {
    print('insert at last');
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
  }

  void deleteSpecific(int data) {
    print('delete specefic');
    if (head == null) {
      print("list is emppty. value can't find");
      return;
    }
    if (head?.data == data) {
      head = head?.next;
    }
    Node? current = head;
    Node? prev;
    while (current?.data != null && current?.data != data) {
      prev = current;
      current = current?.next;
    }

    if (current == null) {
      print("Value not found in the list");
      return;
    }
    prev?.next = current.next;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      stdout.write('${current.data}->');
      current = current.next;
    }
    stdout.write('\n');
  }

  void insertAfter(int data, int n) {
    print('insert after:$n');
    Node newnode = Node(data);
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? current = head;
    while (current != null && current.data != n) {
      current = current.next;
    }
    newnode.next = current?.next;
    current?.next = newnode;
  }

  void insertBefore(int data, int n) {
    print('insert before: $n');
    Node newnode = Node(data);
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? current = head;
    Node? prev;
    while (current != null && current.data != n) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      print("Value not found in the list");
      return;
    }
    prev?.next = newnode;
    newnode.next = current;
  }

  void deleteAfter(int n) {
    print('delete after $n');
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? current = head;

    while (current != null && current.data != n) {
      current = current.next;
    }
    current?.next = current.next?.next;
  }

  void deleteBefore(int n) {
    print('delete before:$n');
    if (head == null || head?.data == n) {
      print('list is empty or too short to delete');
    }
    Node? prev = null;
    Node? befrPrev = null;
    Node? curent = head;
    while (curent != null && curent.data != n) {
      befrPrev = prev;
      prev = curent;
      curent = curent.next;
    }
    if (prev == head) {
      head = head?.next;
    }
    befrPrev?.next = curent;
  }

  void arraytoll() {
    print('array to ll');
    List<int> l1 = [2, 30, 4, 50, 6, 9, 10, 30, 12];
    for (int val in l1) {
      append(val);
    }
  }

  void reverse() {
    print('reverse order:');
    Node? later;
    Node? current = head;
    Node? prev;

    while (current != null) {
      later = current.next;
      current.next = prev;
      prev = current;
      current = later;
    }
    head = prev;
    current = head;
    while (current != null) {
      stdout.write('${current.data}->');
      current = current.next;
    }
    stdout.write('null');
  }

  void duplicate() {
    print('After removing duplicates:');
    List dup = [];
    if (head == null) {
      print('list is empty!');
      return;
    }
    Node? current = head;
    Node? prev;
    while (current != null) {
      if (dup.contains(current.data)) {
        prev?.next = current.next;
      } else {
        dup.add(current.data);
        prev = current;
      }
      current = current.next;
    }
  }

  void countduplicate() {
    print('counting duplicates!');
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? current = head;
    Map<int, int> dup = {};
    while (current != null) {
      dup[current.data] = (dup[current.data] ?? 0) + 1;
      current = current.next;
    }
    int dupcount = 0;
    dup.forEach(
      (key, value) {
        if (value > 1) {
          dupcount++;
        }
      },
    );
    print('count of duplicate elements:$dupcount');
  }

  Node? findMiddle() {
    if (head == null) {
      print('list is empty');
      return null;
    }

    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }

    return slow;
  }

  bubble() {
    bool swapped;
    do {
      swapped = false;
      Node? current = head;
      while (current?.next != null) {
        if (current!.data > current.next!.data) {
          int temp = current.data;
          current.data = current.next!.data;
          current.next!.data = temp;
          swapped = true;
        }
        current = current.next;
      }
    } while (swapped);
  }

  selection() {
    if (head == null) return;
    Node? current = head;
    while (current != null) {
      Node? min = current;
      Node? temp = current.next;
      while (temp != null) {
        if (min!.data > temp.data) {
          min = temp;
        }
        temp = temp.next;
      }
      int tempdata = current.data;
      current.data = min!.data;
      min.data = tempdata;
      current = current.next;
    }
  }

  void deletemid() {
    print('\nafter deleting mid element:');
    if (head == null) {
      print('list is empty!');
      return;
    } else {
      Node? slow = head;
      Node? fast = head;
      Node? prev;

      while (fast != null && fast.next != null) {
        {
          prev = slow;
          slow = slow?.next;
          fast = fast.next?.next;
        }
      }
      prev?.next = slow?.next;
    }
  }

  void max() {
    int max = 0;
    int max2 = 0;
    Node? current = head;
    while (current != null) {
      if (current.data > max) {
        max2 = max;
        max = current.data;
      } else if (current.data > max2 && current.data < max) {
        max2 = current.data;
      }
      current = current.next;
    }
    print('highest:$max');
    print('2nd highest:$max2');
  }
}

void main() {
  LinkedList list = LinkedList();
  // list.append(10);
  // list.append(9000);
  // list.printList();
  // list.insertAtFirst(90);
  // list.printList();
  // list.insertAtLast(100);
  // list.printList();
  // list.deleteSpecific(900);
  // list.printList();
  // list.insertAfter(0, 100);
  // list.printList();
  // list.insertBefore(8, 900);
  // list.printList();
  // list.deleteAfter(10);
  // list.printList();
  // list.deleteBefore(10);
  // list.printList();
  list.arraytoll();
  list.printList();
  // list.duplicate();
  //list.printList();
  // list.countduplicate();
  // Node? mid = list.findMiddle();
  // print('middle element=${mid?.data}');
  // list.max();
  // list.reverse();
  // list.deletemid();
  //list.bubble();
  list.selection();
  list.printList();
}
