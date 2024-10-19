int sum(n, [a = 0]) {
  if (n == 0) return a;
  return sum(n ~/ 10, a + (n % 10));
}

void main() {
  int s = sum(345);
  print(s);
}
