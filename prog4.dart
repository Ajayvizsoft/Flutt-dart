import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random target number between 1 and 100
  final target = Random().nextInt(100) + 1;
  int attempts = 0;  // To count the number of attempts
  int guess = -1;  // Initializing guess with an invalid number

  print("Welcome to the Number Guessing Game!\nGuess a number between 1 and 100.");

  // While loop continues until the correct guess is made
  while (true) {
    stdout.write("Enter your guess: ");
    
    // Read user input and parse it into an integer. If invalid, continue with -1 as the guess.
    guess = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    attempts++;

    // Check if the guess is valid and make sure it's within the range.
    if (guess < 1 || guess > 100) {
      print("Please enter a number between 1 and 100.");
      continue;  // Skip to the next iteration if the guess is out of range
    }

    // Conditional statements to give feedback based on the guess
    if (guess < target) {
      print("Too low! Try again.");
    } else if (guess > target) {
      print("Too high! Try again.");
    } else {
      // Correct guess
      print("Congratulations! You guessed it in $attempts attempts.");
      break;  // Exit the loop as the correct number is guessed
    }
  }
}
