int fib(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  int f = fib(n - 1) + fib(n - 2);
  return f;
}

void main() {
  int f = fib(10);
  print('fib number at 10 $f');
}
