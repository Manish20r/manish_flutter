import 'dart:io';

void main(){
  int? n;
  print('Enter a num :');
  n = int.parse(stdin.readLineSync()!);
  var circle = 3.14*n*n;
  print('Area of circle : $circle');
}