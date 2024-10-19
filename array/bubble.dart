void main() {
  List<int> l1 = [1, 2, 3, 4, 5, 6, 9, 3, 6];
  print(l1);
  for (int i = 0; i < l1.length - 1; i++) {
    for (int j = 0; j < l1.length - i - 1; j++) {
      if (l1[j] < l1[j + 1]) {
        int temp = l1[j + 1];
        l1[j + 1] = l1[j];
        l1[j] = temp;
      }
    }
  }
  print(l1);
}
