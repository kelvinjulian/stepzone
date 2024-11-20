// ignore_for_file: prefer_const_constructors

/*
*--------------------------------------------------------------------------------------------
   *P R O G R A M M I N G   F U N D A M E N T A L S
  ? VARIABLES: You can store different types of info into variables
  String name = "Kelvin Julian";
  int age = 20;
  double pi = 3.14;
  bool isBeginner = true;

  ? BASIC MATH OPERATION
  1+1 = 2, ADDITION
  2-1 = 1, SUBTRACTION
  2*2 = 4, MULTIPLICATION
  4/2 = 2, DIVISION
  9%4 = 1, MODULUS
  ++, increment by 1, 5++ = 6
  --, decrement by 1, 5-- = 4

  ? COMPARSION OPERATION
  5 == 5, true, EQUAL TO
  2 != 3, true, NOT EQUAL TO
  3 > 2, true, GREATER THAN
  3 < 2, false, LESS THAN
  5 >= 5, true, GREATER THAN OR EQUAL TO
  5 <= 5, true, LESS THAN OR EQUAL TO

  ? LOGICAL OEPERATORS 
  AND operator, returns true if both sides are true
  isBeginner && ( age < 18 ) -> return true

  OR operator, returns true if either side is true
  isBeginner || ( age < 18 ) -> return true

  NOT operator, returns true if the side is false
  !isBeginner -> return false

*-------------------------------------------------------------------------------------------

   *C O N T R O L F L O W
  ? IF STATEMENT
  if ( grade == A ) {
    print("Excellent");
  }

  ? ELSE STATEMENT
  if ( grade == A ) {
    print("Excellent");
  } else {
    print("Good");
  }

  ? ELSE IF STATEMENT
  if ( grade == A ) {
    print("Excellent");
  } else if ( grade == B ) {
    print("Good");
  }

  ? SWITCH STATEMENT
  switch ( grade ) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Average");
      break;
    default:
      print("Invalid Grade"); 
  }

*--------------------------------------------------------------------------------------------

   *L O O P S
  ?For Loop 
  imagine you have a box of 10 different colored crayons and you want to draw a circle with each one. Instead of saying :
  "Draw a circle with red crayon"
  "Draw a circle with blue crayon"
  "etc.."
  It's much easier to say:
  "For each crayon in the box, draw a circle."
  for(initialization; condition; iteration) {
    
  }

  ?While Loop
  in a for loop, you have to specify the number of times loop. If you dont know how many times to loop, you can use a while loop to keep looping until a certain condition is met.
  while(condition) {
    
  }

  break -> break out of the loop
  continue -> skip the current iteration and move to the next iteration

*--------------------------------------------------------------------------------------------

  *F U N C T I O N S / M E T H O D S
  We just looked at some cool blocks of code that gets things done!
  We can organise these blocks of code into functions so that we can reuse them easily.

  'void' means that the function returns nothing. Shortly we will look at functions that do return  somethin. This one for now just executes the code in the function.


  basic function
  void greet() {
    print("Hello Kelvin");
  }

  function with parameters
  void greetPerson(String name, int age) {
    print("Hello, " + name + " you are " + age.toString());
  }

  function with return type
  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }

*--------------------------------------------------------------------------------------------

  *D A T A  S T R U C T U R E S

  ? LIST : ordered collection of elements, can have duplicate elements
  List numbers = [1, 2, 3, 4, 5];
  numbers[0] = 1
  numbers[1] = 2
  etc...
  List names = ["Kelvin", "Julian", "Putra"];
  names[0] = "Kelvin"
  names[1] = "Julian"
  etc...

  ? SET : unordered collection of unique elements
  Set<String> uniqueNames = {"Kelvin", "Julian", "Putra"};

  ? MAP : unordered collection of key-value pairs
  Map user = {
    "name": "Kelvin",
    "age": 20,
    "height": 165
  };
  print(user["name"]); -> Kelvin
  print(user["age"]); -> 20
  print(user["height"]); -> 165

  void printNumbers() {
    for (int i = 0; i < numbers.length; i++) {
      print(numbers[i]);
    }
  }

*--------------------------------------------------------------------------------------------

  */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepzone/models/cart.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
