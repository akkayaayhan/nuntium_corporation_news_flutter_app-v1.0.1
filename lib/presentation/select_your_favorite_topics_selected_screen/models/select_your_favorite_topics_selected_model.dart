// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview2_item_model.dart';

/// This class defines the variables used in the [select_your_favorite_topics_selected_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectYourFavoriteTopicsSelectedModel extends Equatable {
  SelectYourFavoriteTopicsSelectedModel({this.chipview2ItemList = const []}) {}

  List<Chipview2ItemModel> chipview2ItemList;

  SelectYourFavoriteTopicsSelectedModel copyWith(
      {List<Chipview2ItemModel>? chipview2ItemList}) {
    return SelectYourFavoriteTopicsSelectedModel(
      chipview2ItemList: chipview2ItemList ?? this.chipview2ItemList,
    );
  }

  @override
  List<Object?> get props => [chipview2ItemList];
}
