class BookModel {
  String id;
  String title;
  String description;
  List<String> authors;
  int pageCount;
  String category;
  String imageUrl;
  String language;
  String publisher;
  int published;
  BookModel({
    required this.id,
    required this.title,
    required this.description,
    required this.authors,
    required this.pageCount,
    required this.category,
    required this.imageUrl,
    required this.language,
    required this.publisher,
    required this.published,
  });

  factory BookModel.fromJson(Map json) {
    return BookModel(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      authors: List<String>.from(json["authors"]),
      pageCount: json["pageCount"],
      category: json["category"],
      imageUrl: json["imageUrl"],
      language: json["language"],
      publisher: json["publisher"],
      published: json["published"],
    );
  }
}
