List<int> removeDuplicates(List<int> arr) {
  // Base Case: When the array is empty
  if (arr.isEmpty) {
    return [];
  }

  // Extract the first element
  int firstElement = arr[0];

  // Check if the first element is already in the rest of the array
  List<int> rest = arr.sublist(1);

  // Include the first element only if it's not in the rest
  List<int> result = removeDuplicates(rest);
  if (!result.contains(firstElement)) {
    result.insert(0, firstElement);
  }

  return result;
}

void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 1, 5]; // Example array
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print("Array with duplicates removed: $uniqueNumbers");
}
