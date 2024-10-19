String rev(str) {
  if (str.isEmpty) {
    return str;
  }
  return rev(rev(str.substring(1))) + str[0];
}

void main() {
  String s = rev('hello');
  print(s);
}
