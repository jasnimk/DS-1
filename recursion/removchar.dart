String rmv(String str, String char) {
  if (str.isEmpty) {
    return '';
  }
  if (str[0] == char) {
    return rmv(str.substring(1), char);
  }
  return str[0] + (rmv(str.substring(1), char));
}

void main() {
  String s = rmv('hello world', 'h');
  print(s);
}
