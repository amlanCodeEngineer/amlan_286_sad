//Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number


////ternay:
// num maxNumber(num a , num b, num c)
// {
//   return (a>b && a>c)
//   ?a
//   :(b>c)
//   ?b 
//   :c;
// }

num maxNumber(num a, num b, num c) {
  if (a >= b && a >= c) {
    return a;
  } else if (b >= a && b >= c) {
    return b;
  } else {
    return c;
  }
}

void main()
{
  print(maxNumber(10, 17, 17.7));
}