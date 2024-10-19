import 'dart:io';

void main() {
  List<int> l1 = [2, 8, 7, 4, 0, 8];
  print('enter the value to search');
  int s = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < l1.length; i++) {
    if (l1[i] == s) {
      print('found at index $i');
      break;
    }
  }
  print('not found!');
}
