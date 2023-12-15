// ignore_for_file: must_be_immutable

part of 'article_page_two_notifier.dart';

/// Represents the state of ArticlePageTwo in the application.
class ArticlePageTwoState extends Equatable {
  ArticlePageTwoState({this.articlePageTwoModelObj});

  ArticlePageTwoModel? articlePageTwoModelObj;

  @override
  List<Object?> get props => [
        articlePageTwoModelObj,
      ];

  ArticlePageTwoState copyWith({ArticlePageTwoModel? articlePageTwoModelObj}) {
    return ArticlePageTwoState(
      articlePageTwoModelObj:
          articlePageTwoModelObj ?? this.articlePageTwoModelObj,
    );
  }
}
