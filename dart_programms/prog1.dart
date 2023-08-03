
void main() {
  int N = 10;

  int result = 1;
  for (int i = 1; i <= N; i++) {
    result *= i;
  }

  print('Factorial of $N');
  print(result);
}