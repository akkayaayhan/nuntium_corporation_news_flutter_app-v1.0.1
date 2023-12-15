// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview2_item_widget] screen.
class Chipview2ItemModel extends Equatable {
  Chipview2ItemModel({
    this.categoryOne,
    this.isSelected,
  }) {
    categoryOne = categoryOne ?? "🏈   Sports";
    isSelected = isSelected ?? false;
  }

  String? categoryOne;

  bool? isSelected;

  Chipview2ItemModel copyWith({
    String? categoryOne,
    bool? isSelected,
  }) {
    return Chipview2ItemModel(
      categoryOne: categoryOne ?? this.categoryOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [categoryOne, isSelected];
}
