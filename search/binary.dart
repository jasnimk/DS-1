// binary(List l1, int s, int min, int max) {
//   int mid = (min + max) ~/ 2;

//   if (l1[mid] == s) {
//     l1[mid] = 0;
//     return l1;
//   } else if (l1[mid] > s) {
//     binary(l1, s, mid + 1, max);
//   } else {
//     binary(l1, s, min, mid - 1);
//   }
// }

even(List l1) {
  if (l1.isEmpty) {
    return [];
  }
  if (l1[0] % 2 == 0) {
    return [l1[0]] + even(l1.sublist(1));
  } else {
    return even(l1.sublist(1));
  }
}

void main() {
  List l1 = [1, 2, 3, 4, 5, 6];
  List l2 = even(l1);
  print(l2);
}
