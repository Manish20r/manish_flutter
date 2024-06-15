
import 'dart:io';

void main(){
  int num1,num2;

  print("enter number1 :");
  num1=int.parse(stdin.readLineSync()!);
  print("enter number2 :");
  num2=int.parse(stdin.readLineSync()!);
  print("before number1:$num1 and number2:$num2");
  num1=num1+num2;
  num2=num1-num2;
  num1=num1-num2;
  print("after number1:$num1 and number2:$num2");
}