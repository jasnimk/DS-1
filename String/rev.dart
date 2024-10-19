import 'dart:io';

void main() {
  String s = 'hello';

  for (int i = s.length - 1; i >= 0; i--) {
    stdout.write(s[i]);
  }
}
