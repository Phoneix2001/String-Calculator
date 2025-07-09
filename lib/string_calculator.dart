/// Adds numbers provided in a string.
///
/// The [numbers] parameter is a string containing numbers separated by commas.
/// Returns the sum of the numbers as an integer.
int add(String numbers) {
  
  // If the input string is empty, return 0
  if (numbers.isEmpty) return 0;

  /// Parses the input string to determine the delimiter for splitting numbers.
  /// If a custom delimiter is specified at the start of the string using the
  /// syntax `//<delimiter>\n`, it extracts and uses that delimiter. Otherwise,
  /// it defaults to using a comma as the delimiter.
  // Default delimiter is comma
  String delimiter = ',';
  if (numbers.startsWith('//')) {
    final parts = numbers.split('\n');
    delimiter = parts[0].substring(2);
    numbers = parts[1];
  }

  // Replace newlines with commas, split by commas, and parse the numbers
  final cleaned = numbers.replaceAll('\n', delimiter);
  // split by commas and parse the numbers
  final parts = cleaned.split(delimiter);
  final nums = parts.map(int.parse).toList();
  final negatives = nums.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('Negative numbers not allowed: ${negatives.join(',')}');
  }

  return nums.reduce((a, b) => a + b);
}
