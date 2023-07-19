// Books Data

class Book {
  String bookCover;
  String bookTitle;
  String author;
  String yearPublished;
  String genre;

  Book(this.bookCover, this.bookTitle, this.author, this.yearPublished,
      this.genre);
}

List<Book> popularBooks = [
  Book("pexels-7", "Court of Mist and Fury", " Sarah J. Maas", "2014",
      "Fiction"),
  Book("pexels-6", "Harry Potter und der Feuerkelch", "J. K. Rowling", "1999",
      "Fiction"),
  Book("pexels-9", "The Gruffalo", "Julia Donaldson", "1999", "Fiction"),
  Book("pexels-4", "The Wrong Wife", "Carolyn McSparren", "2000", "Romance"),
  Book("pexels-3", "A kingdom of dreams", "Judith McNaught", "1989", "Romance"),
  Book("pexels-2", "The Seven Husbands of Evelyn Hugo", "Taylor Jenkins Reid",
      "2017", "Fiction"),
  Book("pexels-1", "The Shining", "Stephen King", "1977", "Fiction")
];

List<Book> newBooks = [
  Book("pexels-1", "Voice & speech in the theatre", "J. Clifford Turner",
      "1950", "Culture"),
  Book("pexels-2", "Anlass zur Unruhe", "Eric Ambler", "1838", "Classic"),
  Book("pexels-3", "Those barren leaves", "Aldous Huxley", "1925", "Classic"),
  Book("pexels-4", "The savage pilgrimage", "Catherine Carswell", "1932",
      "Classic"),
  Book("pexels-5", "The human polity", "Kay Lawson", "1984",
      "Political science"),
];
