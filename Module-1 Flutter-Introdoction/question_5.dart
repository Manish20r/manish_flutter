import 'dart:io';

void main(){
  int b;
  int h;

  print('Enter a base');
  b = int.parse(stdin.readLineSync()!);
  print("Enter a height :");
  h = int.parse(stdin.readLineSync()!);
      var area = 0.5*b*h;
      print("Area of triangle : $area");
}