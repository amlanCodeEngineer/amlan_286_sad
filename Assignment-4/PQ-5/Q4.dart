//Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.

import 'dart:io';

void main()
{
  File source = File('hello.txt');
  File destination = File('hello_copy.txt');

  source.copySync(destination.path);
  print('File copied to hello_copy.txt');

}