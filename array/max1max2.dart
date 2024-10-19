void main() {
  List<int> l1 = [1, 4, 2, 6, 8, 8];
  int max1 = l1[0];
  int max2 = l1[1];
  for (int i = 0; i < l1.length; i++) {
    if (l1[i] > max1) {
      max2 = max1;
      max1 = l1[i];
    } else if (l1[i] > max2 && l1[i] < max1) {
      max2 = l1[i];
    }
  }
  print(max1);
  print(max2);
}
