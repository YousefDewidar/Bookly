class BookEntity {
  final String bookId;
  final String title;
  final String author;
  final String description;
  final String category;
  final String imageUrl;
  final num price;
  final double rating;

  const BookEntity({
    required this.bookId,
    required this.title,
    required this.author,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });
}
