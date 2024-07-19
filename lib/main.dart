import 'dart:async';
import 'package:http/http.dart' as http;

Future<String> fetchQuote() async {
  final response = await http.get(Uri.parse('https://api.quotable.io/random'));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load quote');
  }
}

void main() async {
  try {
    String quote = await fetchQuote();
    print(quote);
  } catch (e) {
    print('Error: $e');
  }
}