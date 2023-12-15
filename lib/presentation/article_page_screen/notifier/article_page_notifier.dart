import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/article_page_screen/models/article_page_model.dart';
part 'article_page_state.dart';

final articlePageNotifier =
    StateNotifierProvider<ArticlePageNotifier, ArticlePageState>((ref) =>
        ArticlePageNotifier(
            ArticlePageState(articlePageModelObj: ArticlePageModel())));

/// A notifier that manages the state of a ArticlePage according to the event that is dispatched to it.
class ArticlePageNotifier extends StateNotifier<ArticlePageState> {
  ArticlePageNotifier(ArticlePageState state) : super(state);
}
