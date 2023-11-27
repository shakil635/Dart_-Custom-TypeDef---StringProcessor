/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_custom_typedef_sage_base.dart';

typedef StringProcessor = int Function(String times);

int processStringList(List<String> listOFWord, StringProcessor str) {
  return listOFWord.fold(
      0, (previousValue, element) => previousValue + str(element));
}




/*
Practice Question 4: Custom TypeDef Usage
Define a typedef named StringProcessor for a 
function type that takes a String and returns 
an int. Then, write a function processStringList 
that takes a List<String> and a StringProcessor as 
parameters. Use this function with an anonymous 
function to count the total number of 
characters in a list of strings.
 */