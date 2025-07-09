import 'dart:io';
import 'package:string_calculator/string_calculator.dart' as string_calculator;

/// Prompts the user to enter numbers, then calculates and prints their sum.
void main(List<String> arguments) {
  // Prompt the user for input
  stdout.write('Enter numbers to sum (comma separated): ');
  String? input = stdin.readLineSync();

  // If input is provided, calculate and print the sum
  if (input != null) {
    print('Sum: \\${string_calculator.add(input)}');
  } else {
    // Handle the case where no input is provided
    print('No input provided.');
  }
}
