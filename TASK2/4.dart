// Define an interface Serializable with a method toJson()
abstract class Serializable {
  // Abstract method toJson() to be implemented by subclasses
  Map<String, dynamic> toJson();
}

// Example class User implementing Serializable
class User implements Serializable {
  String name;
  int age;

  // Constructor for User
  User(this.name, this.age);

  // Implementing the toJson() method to convert User properties to JSON-like Map
  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

// Example class Product implementing Serializable
class Product implements Serializable {
  String name;
  double price;

  // Constructor for Product
  Product(this.name, this.price);

  // Implementing the toJson() method to convert Product properties to JSON-like Map
  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
    };
  }
}

void main() {
  // Create instances of User and Product
  User user = User('ALTAYEB', 19);
  Product product = Product('VR headset', 9876);

  // Convert instances to JSON-like representation using toJson() method
  print('User:');
  print(user.toJson()); // Output: {"name": "John Doe", "age": 30}

  print(''); // Add a blank line for clarity

  print('Product:');
  print(product.toJson()); // Output: {"name": "Smartphone", "price": 999.99}
}
