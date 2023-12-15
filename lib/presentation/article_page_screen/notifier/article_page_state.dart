// ignore_for_file: must_be_immutable

part of 'article_page_notifier.dart';

/// Represents the state of ArticlePage in the application.
class ArticlePageState extends Equatable {
  ArticlePageState({this.articlePageModelObj});

  ArticlePageModel? articlePageModelObj;

  @override
  List<Object?> get props => [
        articlePageModelObj,
      ];

  ArticlePageState copyWith({ArticlePageModel? articlePageModelObj}) {
    return ArticlePageState(
      articlePageModelObj: articlePageModelObj ?? this.articlePageModelObj,
    );
  }
}
