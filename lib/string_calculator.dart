/// Adds numbers provided in a string.
///
/// The [numbers] parameter is a string containing numbers separated by commas.
/// Returns the sum of the numbers as an integer.
int add(String numbers) {
  
  // If the input string is empty, return 0
  if (numbers.isEmpty) return 0;
  // Split the string by commas, parse each part to an integer, and sum them up
  final parts = numbers.split(',');
  return parts.map(int.parse).reduce((a, b) => a + b);
}
