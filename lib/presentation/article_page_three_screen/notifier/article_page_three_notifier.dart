import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/article_page_three_screen/models/article_page_three_model.dart';
part 'article_page_three_state.dart';

final articlePageThreeNotifier =
    StateNotifierProvider<ArticlePageThreeNotifier, ArticlePageThreeState>(
        (ref) => ArticlePageThreeNotifier(ArticlePageThreeState(
            articlePageThreeModelObj: ArticlePageThreeModel())));

/// A notifier that manages the state of a ArticlePageThree according to the event that is dispatched to it.
class ArticlePageThreeNotifier extends StateNotifier<ArticlePageThreeState> {
  ArticlePageThreeNotifier(ArticlePageThreeState state) : super(state);
}
