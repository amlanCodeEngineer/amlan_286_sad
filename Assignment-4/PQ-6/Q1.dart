//Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.

class Laptop{
  int id ;
  String name;
  String ram;

  Laptop(this.id, this.name, this.ram);
}

void main()
{
  //creating 3 objects of laptops:

  var l1 = Laptop(1,"Macbook", "8GB");
  var l2 = Laptop(2,"HP","16GB");
  var l3 = Laptop(3,"Asus","32GB");

  print("Laptop Details:");
  for (var laptop in[l1,l2,l3])
  {
    print("ID: ${laptop.id}, Name:${laptop.name}, RAM:${laptop.ram}");
  }
}