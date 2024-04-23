import 'dart:io';
import 'dart:math';

double InputNum(){
  print ("Enter the number ");
  double myNumber = double.parse(stdin.readLineSync()!);
  return myNumber;
}
String OperandChoice(){
  print("Enter the operand e.g '+' '-' '/' '*'");
  String operandInput = stdin.readLineSync()!;
  return operandInput;
}

void main(){
  double num1 = InputNum();
  double num2 = InputNum();
  String choice = OperandChoice();
  double result = 0.0;

  if (choice == '+'){
    result = num1 + num2;
    print("$num1 $choice $num2 = $result");
  }
  else if (choice == '-'){
    result = num1 - num2;
     print("$num1 $choice $num2 = $result");
  }
  else if (choice == '*'){
    result = num1 * num2; 
     print("$num1 $choice $num2 = $result");
  }
  else if (choice == '/'){
    if(num2 == 0){
      print("Math Error");
    }
    else{
      result = num1 / num2;
       print("$num1 $choice $num2 = $result");
    }
  }
  else{
  print("Invalid entry, please review");
}

}
