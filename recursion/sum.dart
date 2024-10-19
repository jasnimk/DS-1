// int sum(int n) {
//   if (n <= 0) return 0;
//   int s = n + sum(n - 1);
//   return s;
// }

void main() {
  int s = fib(10);
  print('sum=$s');
}

// int fact(int n) {
//   if (n <= 1) {
//     return 1;
//   }
//   return n * fact(n - 1);
// }
int fib(int n) {
  if (n == 0)
    return 0;
  else if (n == 1) return 1;
  return fib(n - 1) + fib(n - 2);
}
