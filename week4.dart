import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class LivingBeing {
  String name;

  LivingBeing(this.name);

  void breathe() {
    print('$name is breathing.');
  }
}

// Derived class implementing an interface
class Dog extends LivingBeing implements Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void makeSound() {
    print('$name barks.');
  }
}

void main() {
  // Creating an instance of a class initialized with data from a file
  final filename = 'data.txt';
  try {
    final file = File(filename);
    final lines = file.readAsLinesSync();
    print('Contents of $filename:');
    for (var line in lines) {
      print(line);
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  // Creating an instance of a class
  final myDog = Dog('Buddy', 'Golden Retriever');

  // Demonstrating methods and inheritance
  myDog.breathe();
  myDog.makeSound();
}
