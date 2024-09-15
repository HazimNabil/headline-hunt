class Article {
  final String id;
  final String title;
  final String description;
  final String url;
  final String author;
  final String image;
  final String language;
  final String category;
  final DateTime published;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.author,
    required this.image,
    required this.language,
    required this.category,
    required this.published,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      author: json['author'] as String,
      image: json['image'] as String,
      language: json['language'] as String,
      category: json['category'][0] as String,
      published: DateTime.parse(json['published'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'url': url,
      'author': author,
      'image': image,
      'language': language,
      'category': category,
      'published': published,
    };
  }
}
