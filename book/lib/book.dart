class Book {
  final String title;
  final String image;
  final String author;
  final String rating;
  final String review;

  var details;
  

  Book({
    required this.author,
    required this.image,
    required this.title,
    required this.rating,
    required this.review,
  });

  factory Book.fromJson(dynamic json) {
    return Book(
      author: json['authors'][0] as String,
      image: json['imageLinks']["thumbnail"] as String,
      title: json['title'] as String,
      review: json['description'] as String,
      rating: json['averageRating'].toString(),
    );
  }
  static List<Book> bookfromsnapshot(List snapshot) {
    return snapshot.map((data) => Book.fromJson(data)).toList();
  }
}
