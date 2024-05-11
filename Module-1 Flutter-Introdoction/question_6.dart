import 'dart:io';

void main(){
  int p;
  int r;
  int t;
  print('Enter the principal');
  p = int.parse(stdin.readLineSync()!);
  print('Enter the rate :');
  r = int.parse(stdin.readLineSync()!);
  print('Enter the time :');
  t =int.parse(stdin.readLineSync()!);
  var interest = (p*r*t)/100;
  print('simple interest : $interest');
}