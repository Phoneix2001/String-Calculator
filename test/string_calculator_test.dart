import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('StringCalculator.add', () {
    test('returns 0 for empty string', () {
      expect(add(''), 0);
    });

    test('returns the number itself for single number input', () {
      expect(add('1'), 1);
    });

    test('returns sum for two numbers', () {
      expect(add('1,2'), 3);
    });

    test('returns sum for multiple numbers', () {
      expect(add('1,2,3,4'), 10);
    });
    test('returns sum for numbers with spaces', () {
      expect(add('1, 2, 3'), 6);
    });
    test('handles spaces around numbers', () {
      expect(add(' 1, 2, 3 '), 6);
    });
  });
}
