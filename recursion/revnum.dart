int reverseNumber(int number, [int reversed = 0]) {
  // Base Case: When the number becomes 0
  if (number == 0) {
    return reversed;
  }

  // Extract the last digit and update reversed number
  int lastDigit = number % 10;
  int newReversed = reversed * 10 + lastDigit;
  // Recursive call with updated number and reversed value
  return reverseNumber(number ~/ 10, newReversed);
}

void main() {
  int number = 12345; // Example number
  int reversed = reverseNumber(number);
  print("Reversed number of $number is $reversed");
}
