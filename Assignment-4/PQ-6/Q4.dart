//Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. Create an object of a Cat and print all details.

class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

//cat extends animal:

class Cat extends Animal{
  String sound;
  Cat(int id, String name, String color, this.sound) : super(id,name,color);
}

void main()
{
  var cat = Cat(1,"Tom","Gray","Meow");
  print("Cat Details:");
  print("ID: ${cat.id}\nName:${cat.name}\nColor:${cat.color}\nSound:${cat.sound}\n");

}