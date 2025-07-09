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
  });
}
