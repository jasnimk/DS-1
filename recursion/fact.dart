int fact(int n) {
  if (n == 1) {
    return 1;
  }
  int f = n * fact(n - 1);
  return f;
}

void main() {
  int f = fact(3);
  print('fact of 5 is $f');
}
