import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  print((age >= 13 && age <= 19) ? "Teenager" : "Not Teenager");
}
