//Write a dart program to create an enum class for gender [male, female, others] and print all values.

enum Gender{male, female, others}

void main()
{
  print("All Gender Values:");
  for (var g in Gender.values){
    print(g);
  }
}