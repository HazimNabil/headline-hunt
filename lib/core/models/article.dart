import 'package:hive_flutter/hive_flutter.dart';

part 'article.g.dart';

@HiveType(typeId: 0)
class Article extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final String url;

  @HiveField(4)
  final String author;

  @HiveField(5)
  final String image;

  @HiveField(6)
  final String language;

  @HiveField(7)
  final String category;

  @HiveField(8)
  final DateTime publishedAt;

  @HiveField(9)
  bool isBookmarked;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.author,
    required this.image,
    required this.language,
    required this.category,
    required this.publishedAt,
    this.isBookmarked = false,
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
      publishedAt: DateTime.parse(json['published'] as String),
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
      'published': publishedAt,
    };
  }
}
