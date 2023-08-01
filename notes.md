# Notes on Learning Dart

Tue Aug 1 01:40:47 PM AEST 2023

## Variables

`is int` will check if it is an integer

String is capital letter, all other types are lower case

insert a variable into a string, use the `$` followed by variable name

var keyword will let dart infer the type - should avoid dynamic types - can
reasign a variable - however if you say `final String` then the varialbe
can't be re-assigned

const is like final, but is unchangable/immutable at compile time

- should use const over final

## Null Safety

- A variable can't be empty
- when you want a variable to be null, using a `?` after the type tells the
  compiler that it is ok

- scenario wherein you declare a null variable in a method and later you might
  want to re-assign that value. You can use the keyword `late` to assign a
  non-nullable value later

## Control flow

### Conditional

Similar to JS.
Create an if statement:
`if (colour == 'blue') {
// do something
} else if (colour == 'orange' ) {
    // do something else
}`

If you want to check if something is empty, you need to use the `isEmpty` method
If you need to check if a value is null, you need to do this explicity, for
example:
`if (thing2 != null);`

### Loops

Similar to JS
`for(var i = 0; i < 5; i++){
print(i)
//break -> this will exit out of the loop
//continue -> this will keep it going if you need to
}`

Similar for while and do-while loops

## Operators

Has all basic arthimetic operators
&& and
|| or
??= allows you to assign a value to a variable, only if it is not assigned

### ternay

same as JS
condition = something ? 'returned if true' : 'returned if false'

### cascade

using `..`
this allows you to modify an object in a method without the need to use
temporary variables

### Typecast

allows you to force the type using the 'as' keyword

## Functions


## List

List inherits from an iterable. 

`List<int> list = [1,2,3,4]`

Others include;
- List
- Map
- Set

the angle brackets '<>' are used to define the generic type, if you want to define a type
access an element in an array using the [] and the index location
Some basic notation:
- list.length
- list.last
- list.first

### combine two lists using the spread syntax:

`var combined = [...list1, ...list2];
combined.forEach(print); //this will print each element in the new combined list

### Conditions in Lists

If you want to only make a value available on a certain condition you can use an if statement

e.g.
`bool depressed = false;`
var cart = [
'milk'
'eggs'
if (depressed) 'Vodka'
];

This will only display Vodka if and when the bool value depressed is true

### Map

Key value pair

Takes generic types for the key and the value:

`Map<String, dynamic> book = {
'title': 'Moby Dick',
'author' 'Herman Melville'
};`


if you want to access the values in a list, you can simply use the toList method:

`book.values.toList();`
Here we can see the name of the map is book, values is stating we want to access the values and not the keys, and it sends those values to a list

However, more often than not, we won't use Map to create an object, but rather a class.

## Classes

### Intro
`class` this is a keyword to create a class. 
Followed by the name of the class, a class should always start with an Uppercase letter and in camel case

`class Basic {

//stuff
}`

### instance variables

if you want to pass a value, you need to declare a variable to be passed and use the keyword
'this'

e.g.

`
void main() {
    Basic thing = Basic(55);
    thing.id;
    thing.doStuff();
}
//class definition
class Basic {
    int id;
    Basic(this.id);
    doStuff() {
        print("Hello my ID is $id");
    }

    static helper(){
    
    }
}
`
now since Basic can take an argument, we can send in a value to that argument

### Static methods

Operate globally. 
Use the static keyword in the class definition

- [ ] create a few classes

### constructors

this is how we construct the object
if we want to build out a Rectangle class to hold dimensions and area:

e.g.

`
class Rectangle {
    final int width; //the final means it can't be re-assigned
    final int height;
    String? name;
    late final int area;//it is late, as the value won't be assigned until after the calculations

    Rectangle(this.width, this.helper, [this.name]) {
    area = width * height;
    }
}
`

[ ] get this code to run
`
class Point {
  double lat = 0;
  double lng = 0;

  // Named constructor
  Point.fromMap(Map data) {
    lat = data['lat'];
    lng = data['lng'];
  }

  Point.fromList(List data) {
    lat = data[0];
    lng = data[1];
  }
}

var p1 = Point.fromMap({'lat': 23, 'lng': 50});
var p2 = Point.fromList([23, 50]);

`

