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
