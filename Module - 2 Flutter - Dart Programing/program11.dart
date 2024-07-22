import 'dart:io';

void main() {
  int? year;
  print("Enter a year: ");
  year = int.parse(stdin.readLineSync()!);

  if (year % 400 == 0) {
    print("$year is a leap year.");
  }
 
  else if (year % 100 == 0) {
    print("$year is not a leap year.");
  }


  else if (year % 4 == 0) {
    print("$year is a leap year.");
  } else {
    print("$year is a not leap year.");
  }
}
