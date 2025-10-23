//Write a dart program to create 100 files using loop.

import 'dart:io';

void main()
{
  for(int i=1; i<=100 ; i++){
    File file = File('file_$i.txt');
    file.writeAsStringSync('This is file number $i');
  }
  print('100 files created successfully.');
}