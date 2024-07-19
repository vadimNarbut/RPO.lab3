class Quote {
  final String content;
  final String author;

  Quote({required this.content, required this.author});

  @override
  String toString() {
    return '"$content" - $author';
  }
}

void main() {
  var quote1 = Quote(content: "Мудрость - это знание, переданное через опыт.", author: "Платон");
  var quote2 = Quote(content: "Жизнь - это то, что с вами происходит, пока вы заняты другими планами.", author: "Джон Леннон");

  print(quote1); // Вывод: "Мудрость - это знание, переданное через опыт." - Платон
  print(quote2); // Вывод: "Жизнь - это то, что с вами происходит, пока вы заняты другими планами." - Джон Леннон
}