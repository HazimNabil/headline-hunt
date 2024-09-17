import 'package:headline_hunt/core/utils/article_database.dart';
import 'package:headline_hunt/core/utils/service_locator.dart';
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
  late bool isBookmarked;

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
  }) {
    isBookmarked = locator.get<ArticleDatabase>().isInDatabase(id);
  }

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

  factory Article.dummy() {
    return Article(
      id: 'id',
      title: "Week 3 NFL Power Rankings: 1-32 poll, plus the most important backup/role player for every team",
      description: 'description',
      url: 'url',
      author: 'NFL Nation',
      image: 'https://a3.espncdn.com/combiner/i?img=%2Fphoto%2F2024%2F0916%2Fnfl_power3_cr_16x9.jpg',
      language: 'language',
      category: 'general',
      publishedAt: DateTime.parse('2024-09-17 16:44:29 +0000'),
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
