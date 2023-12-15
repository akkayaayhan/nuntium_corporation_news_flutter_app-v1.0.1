import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/article_page_two_screen/models/article_page_two_model.dart';
part 'article_page_two_state.dart';

final articlePageTwoNotifier = StateNotifierProvider<ArticlePageTwoNotifier,
        ArticlePageTwoState>(
    (ref) => ArticlePageTwoNotifier(
        ArticlePageTwoState(articlePageTwoModelObj: ArticlePageTwoModel())));

/// A notifier that manages the state of a ArticlePageTwo according to the event that is dispatched to it.
class ArticlePageTwoNotifier extends StateNotifier<ArticlePageTwoState> {
  ArticlePageTwoNotifier(ArticlePageTwoState state) : super(state);
}
