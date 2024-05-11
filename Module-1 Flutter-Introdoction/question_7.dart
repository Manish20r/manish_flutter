import 'dart:io';

void main(){
  int c;
  print('Enter temperatuon :');
  c = int.parse(stdin.readLineSync()!);
  var fahrenheit = (c*9/5)+32;
  print('degree centigrade to fahrenheit : $fahrenheit');
}