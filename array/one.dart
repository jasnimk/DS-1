void main() {
  List<int> l1 = [];
  l1.addAll([1, 2, 3, 9]);
  l1.insert(0, 8);
  l1.remove(3);
  l1.removeAt(0);
  l1.add(3);
  l1[2] = 6;
  print(l1);

  int temp = 0;
  int len = l1.length - 1;
  for (int i = 0; i < l1.length / 2; i++) {
    temp = l1[i];
    l1[i] = l1[len];
    l1[len] = temp;
    len = len - 1;
  }
  print(l1);
}
