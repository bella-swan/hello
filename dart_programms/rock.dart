import 'dart:io';
import 'dart:math';

void main() {
  bool x=true;

  while(x) {
    print("Player 1, enter your choice (Rock, Paper, or Scissors):");
    String player1Choice=UserChoice();

    print("Player 2, enter your choice (Rock, Paper, or Scissors):");
    String player2Choice=UserChoice();

    String computerChoice=ComputerChoice();

    print("\nComputer chooses: $computerChoice\n");

    String winner = determineWinner(player1Choice, player2Choice, computerChoice);
    print(winner);

    print("\nDo you want to play again? (Y/N):");
    String playAgain = stdin.readLineSync()?.toUpperCase() ?? '';
    x=playAgain=='Y';
  }
}

String UserChoice() {
  String choice = stdin.readLineSync()?.toLowerCase() ?? '';
  while (choice != 'rock' && choice != 'paper' && choice != 'scissors') {
    print("Invalid input. Please choose Rock, Paper, or Scissors.");
    choice = stdin.readLineSync()?.toLowerCase() ?? '';
  }
  return choice;
}

String ComputerChoice() {
  List<String> choices = ['rock', 'paper', 'scissors'];
  Random random = Random();
  int randomIndex = random.nextInt(choices.length);
  return choices[randomIndex];
}

String determineWinner(String player1Choice, String player2Choice, String computerChoice) {
  if ((player1Choice == 'rock' && player2Choice == 'scissors') ||
      (player1Choice == 'paper' && player2Choice == 'rock') ||
      (player1Choice == 'scissors' && player2Choice == 'paper')) {
    return "Player 1 wins! ${player1Choice} beats ${player2Choice}.";
  } else if ((player2Choice == 'rock' && player1Choice == 'scissors') ||
      (player2Choice == 'paper' && player1Choice == 'rock') ||
      (player2Choice == 'scissors' && player1Choice == 'paper')) {
    return "Player 2 wins! ${player2Choice} beats ${player1Choice}.";
  } else {
    return "It's a tie!";
  }
}

