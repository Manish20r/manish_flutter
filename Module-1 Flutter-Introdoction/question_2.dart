import 'dart:io';

void main(){
  int? num ;
  int? num2 ;
  print("Enter a num :");
  num = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  int Addition = num +num2;
  int subtraction = num -num2;
  int multiplication =num*num2;
  double division = num / num2;
  print("Addition : $Addition");
  print("subtraction : $subtraction");
  print("multiplication : $multiplication");
  print("division : $division");

}