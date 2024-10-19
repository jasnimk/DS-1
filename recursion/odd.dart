int odd(List l, [int index = 0]) {
  if (index >= l.length) {
    return 0;
  }
  if (l[index] % 2 != 0) {
    return l[index] + odd(l, index + 1);
  } else {
    return odd(l, index + 1);
  }
}

void main() {
  print(odd([1, 2, 3, 4, 5, 6]));
}
