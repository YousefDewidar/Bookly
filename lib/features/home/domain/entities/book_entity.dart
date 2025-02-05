class BookEntity {
  final String id;
  final String title;
  final String author;
  final String description;
  final String category;
  final String imageUrl;
  final String price;
  final double rating;

  const BookEntity({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });
}
