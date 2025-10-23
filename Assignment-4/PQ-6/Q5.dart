//Write a dart program to create a class Camera with private properties [id, brand, color, price]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.

class Camera{

  int _id; 
  String _brand;
  String _color;
  double _price;
  //'_' before any variable means this  is private!

  Camera(this._id, this._brand, this._color,this._price);

  //Getters:
  int get id => _id;
  String get brand => _brand;
  String get color =>_color;
  double get price =>_price;

  //Setters :
  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;

}

void main()
{
  var c1= Camera(1, "Canon", "Black", 55000);
  var c2= Camera(2, "Nikon", "Gray", 60000);
  var c3= Camera(3, "Sony", "Black", 80000);

  print("Camera Details:");
  for (var c in [c1,c2,c3]){
    print("ID: ${c.id}, Brand:${c.brand}, Color: ${c.color}, Price: ${c.price} ");
  }
}