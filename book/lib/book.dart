class Book {
  final String title;
  final String image;
  final String author;
  final String rating;
  

  Book({
    required this.author,
    required this.image,
    required this.title,
    required this.rating,
    
  });

  factory Book.fromJson(dynamic json) {
    return Book(
      author: json['authors'][0] as String,
      image: json['imageLinks']["thumbnail"] as String,
      title: json['title'] as String,

      rating: json['averageRating'].toString() as String,
    );
  }
  static List<Book> bookfromsnapshot(List snapshot) {
    return snapshot.map((data) => Book.fromJson(data)).toList();
  }
}
