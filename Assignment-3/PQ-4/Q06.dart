//Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.

void main() {
  Map<String, dynamic> person = {
    "name": "Amlan",
    "address": "Sreemangal",
    "age": 22,
    "country": "Bangladesh"
  };

  // Update country
  person["country"] = "USA";

  // Print all keys and values
  person.forEach((key, value) {
    print("$key : $value");
  });
}
