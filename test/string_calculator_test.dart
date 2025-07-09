import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('StringCalculator.add', () {
    test('returns 0 for empty string', () {
      expect(add(''), 0);
    });
  });
}
