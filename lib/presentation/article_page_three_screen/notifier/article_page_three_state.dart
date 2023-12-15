// ignore_for_file: must_be_immutable

part of 'article_page_three_notifier.dart';

/// Represents the state of ArticlePageThree in the application.
class ArticlePageThreeState extends Equatable {
  ArticlePageThreeState({this.articlePageThreeModelObj});

  ArticlePageThreeModel? articlePageThreeModelObj;

  @override
  List<Object?> get props => [
        articlePageThreeModelObj,
      ];

  ArticlePageThreeState copyWith(
      {ArticlePageThreeModel? articlePageThreeModelObj}) {
    return ArticlePageThreeState(
      articlePageThreeModelObj:
          articlePageThreeModelObj ?? this.articlePageThreeModelObj,
    );
  }
}
