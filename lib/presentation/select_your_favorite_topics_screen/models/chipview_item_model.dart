// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModel extends Equatable {
  ChipviewItemModel({
    this.categoryOne,
    this.isSelected,
  }) {
    categoryOne = categoryOne ?? "🏈   Sports";
    isSelected = isSelected ?? false;
  }

  String? categoryOne;

  bool? isSelected;

  ChipviewItemModel copyWith({
    String? categoryOne,
    bool? isSelected,
  }) {
    return ChipviewItemModel(
      categoryOne: categoryOne ?? this.categoryOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [categoryOne, isSelected];
}
