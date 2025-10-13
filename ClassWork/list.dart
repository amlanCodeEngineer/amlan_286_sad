void main()
{
  int sum = 0;
  List<int> list = [10,20,15];
  list.forEach((n){
    // print(n);
    sum += n;
  });
  print(sum);
}