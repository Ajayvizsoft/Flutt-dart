import 'dart:io';

void main() {
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter operator (+, -, *, /, <, >, <=, >=, ==, !=, &&, ||):');
  String operator = stdin.readLineSync()!;

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double? result;
  bool? boolResult;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero is not allowed.');
        return;
      }
      break;
    case '<':
      boolResult = num1 < num2;
      break;
    case '>':
      boolResult = num1 > num2;
      break;
    case '<=':
      boolResult = num1 <= num2;
      break;
    case '>=':
      boolResult = num1 >= num2;
      break;
    case '==':
      boolResult = num1 == num2;
      break;
    case '!=':
      boolResult = num1 != num2;
      break;
    case '&&':
      boolResult = (num1 != 0) && (num2 != 0);
      break;
    case '||':
      boolResult = (num1 != 0) || (num2 != 0);
      break;
    default:
      print('Error: Invalid operator.');
      return;
  }

  if (result != null) {
    print('Result: $result');
  } else if (boolResult != null) {
    print('Result: $boolResult');
  }
}
