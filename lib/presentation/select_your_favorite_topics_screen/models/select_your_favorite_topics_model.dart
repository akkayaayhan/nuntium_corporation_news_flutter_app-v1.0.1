// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview_item_model.dart';

/// This class defines the variables used in the [select_your_favorite_topics_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectYourFavoriteTopicsModel extends Equatable {
  SelectYourFavoriteTopicsModel({this.chipviewItemList = const []}) {}

  List<ChipviewItemModel> chipviewItemList;

  SelectYourFavoriteTopicsModel copyWith(
      {List<ChipviewItemModel>? chipviewItemList}) {
    return SelectYourFavoriteTopicsModel(
      chipviewItemList: chipviewItemList ?? this.chipviewItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewItemList];
}
