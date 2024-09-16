import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/models/article.dart';

part 'latest_news_state.dart';

class LatestNewsCubit extends Cubit<LatestNewsState> {
  LatestNewsCubit() : super(LatestNewsInitial());
}
