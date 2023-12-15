// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'articlecontent_item_model.dart';

/// This class defines the variables used in the [bookmarks_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookmarksModel extends Equatable {
  BookmarksModel({this.articlecontentItemList = const []}) {}

  List<ArticlecontentItemModel> articlecontentItemList;

  BookmarksModel copyWith(
      {List<ArticlecontentItemModel>? articlecontentItemList}) {
    return BookmarksModel(
      articlecontentItemList:
          articlecontentItemList ?? this.articlecontentItemList,
    );
  }

  @override
  List<Object?> get props => [articlecontentItemList];
}
