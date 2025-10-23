//Write a dart program to store name, age, and address of students in a csv file and read it.

import 'dart:io';

void main()
{
  File csvFile = File('students.csv');

  //Write CSV headers and data
  csvFile.writeAsStringSync('Name, Age, Address\n');
  csvFile.writeAsStringSync('Amlan Kumar Das,  22, Leading University\n', mode: FileMode.append);
  csvFile.writeAsStringSync('Tonmoy Deb Robin, 27, Leading University\n', mode: FileMode.append);
  print('CSV file created. Contents:');

  //Read & print CSV:
  List<String> lines = csvFile.readAsLinesSync();
  for(var  line in lines ){
    print(line);
  }
}