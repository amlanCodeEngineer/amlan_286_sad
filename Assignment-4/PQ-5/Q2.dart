//Write a dart program to append your friends name to a file that already has your name.

import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('Lisa Mam\n', mode: FileMode.append);
  print('Friend appended');
}
