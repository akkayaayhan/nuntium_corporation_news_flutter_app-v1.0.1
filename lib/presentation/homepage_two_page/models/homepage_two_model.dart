// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'articlelist_item_model.dart';

/// This class defines the variables used in the [homepage_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTwoModel extends Equatable {
  HomepageTwoModel({this.articlelistItemList = const []}) {}

  List<ArticlelistItemModel> articlelistItemList;

  HomepageTwoModel copyWith({List<ArticlelistItemModel>? articlelistItemList}) {
    return HomepageTwoModel(
      articlelistItemList: articlelistItemList ?? this.articlelistItemList,
    );
  }

  @override
  List<Object?> get props => [articlelistItemList];
}
