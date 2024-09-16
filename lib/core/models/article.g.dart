// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArticleAdapter extends TypeAdapter<Article> {
  @override
  final int typeId = 0;

  @override
  Article read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Article(
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String,
      url: fields[3] as String,
      author: fields[4] as String,
      image: fields[5] as String,
      language: fields[6] as String,
      category: fields[7] as String,
      publishedAt: fields[8] as DateTime,
      isBookmarked: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Article obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.author)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.language)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.publishedAt)
      ..writeByte(9)
      ..write(obj.isBookmarked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
