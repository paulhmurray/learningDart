class Person {
  String? name;
  int? age;
//Constructor
  Person(this.name, this.age); 
}

void main () {
  Person person = Person("Alice", 25);
  print("Name: ${person.name}, Age: ${person.age}");
}
