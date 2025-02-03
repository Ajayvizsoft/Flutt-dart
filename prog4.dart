import 'dart:io';
import 'dart:math';

void main() {

  final target = Random().nextInt(100) + 1;
  int attempts = 0; 
  int guess = -1;  

  print("Welcome to the Number Guessing Game!\nGuess a number between 1 and 100.");

 
  while (true) {
    stdout.write("Enter your guess: ");
    

    guess = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    attempts++;


    if (guess < 1 || guess > 100) {
      print("Please enter a number between 1 and 100.");
      continue; 
    }

   
    if (guess < target) {
      print("Too low! Try again.");
    } else if (guess > target) {
      print("Too high! Try again.");
    } else {
   
      print("Congratulations! You guessed it in $attempts attempts.");
      break; 
    }
  }
}
