void towersOfHanoi(int n, String fromRod, String toRod, String auxRod) {
  if (n == 1) {
    // Base case: Move a single disk directly
    print('Move disk 1 from rod $fromRod to rod $toRod');
    return;
  }

  // Step 1: Move n-1 disks from fromRod to auxRod using toRod
  towersOfHanoi(n - 1, fromRod, auxRod, toRod);

  // Step 2: Move the nth disk from fromRod to toRod
  print('Move disk $n from rod $fromRod to rod $toRod');

  // Step 3: Move n-1 disks from auxRod to toRod using fromRod
  towersOfHanoi(n - 1, auxRod, toRod, fromRod);
}

void main() {
  int numberOfDisks = 3; // Example with 3 disks
  towersOfHanoi(numberOfDisks, 'A', 'C', 'B');
}
