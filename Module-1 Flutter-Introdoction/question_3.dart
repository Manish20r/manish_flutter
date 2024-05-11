import 'dart:io';

void main(){
  int? num;
  print('Enter a num :');
  num = int.parse(stdin.readLineSync()!);
  int square = num*num;
  int cube =num*num*num;
  print('square : $square');
  print('cube : $cube');
}