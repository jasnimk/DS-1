void recursion(int n) {
  if (n <= 1) {
    return;
  }
  recursion(n - 1);
  print(n);
  recursion(n - 1);
}

void main() {
  recursion(5);
}
