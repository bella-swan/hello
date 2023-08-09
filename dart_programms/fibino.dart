import 'dart:io';

void main() {
  print("Enter the number of numbers whose sequence is to generate:");
  int n = int.parse(stdin.readLineSync()!);
  print("Fibonacci Series:");
  for (int i = 0; i<n; i++) {
    print(fibonacci(i));
    
  }
}

int fibonacci(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
