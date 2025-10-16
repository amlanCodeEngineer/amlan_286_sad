//12.Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
num calculateArea ({num length=1, num width =1})
{
  return length * width;
}

void main()
{
print("Area: ${calculateArea(length: 10, width: 5)}");
print("Default Area: ${calculateArea()}");
}