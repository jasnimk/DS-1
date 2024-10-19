void main() {
  List<int> l1 = [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17];
  int maxLength = 0;
  int currentLength = 1;

  for (int i = 0; i < l1.length - 1; i++) {
    if (l1[i] + 1 == l1[i + 1]) {
      currentLength++;
      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    } else {
      currentLength = 1;
    }
  }

  print("The length of the longest consecutive sequence is: $maxLength");
}
