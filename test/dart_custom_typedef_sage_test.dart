import 'package:dart_custom_typedef_sage/dart_custom_typedef_sage.dart';
import 'package:test/test.dart';

void main() {
  group('Custom TypeDef - StringProcessor', () {
    test('Count total characters in a list of strings', () {
      final strings = ['hello', 'dart', 'world'];
      // Replace `processStringList` with your function
      expect(
          processStringList(strings, (String str) => str.length), equals(14));
    });

    test('Empty list returns zero', () {
      List<String> strings = [];
      expect(processStringList(strings, (String str) => str.length), equals(0));
    });

    test('List with empty strings returns zero', () {
      final strings = ['', '', ''];
      expect(processStringList(strings, (String str) => str.length), equals(0));
    });

    test('List with various length strings', () {
      final strings = ['a', 'ab', 'abc'];
      expect(processStringList(strings, (String str) => str.length), equals(6));
    });

    test('Processing strings with custom logic', () {
      final strings = ['apple', 'banana', 'cherry'];
      // Custom logic: Count of 'a' characters in each string
      expect(
          processStringList(
              strings, (String str) => 'a'.allMatches(str).length),
          equals(4));
    });
  });
}
