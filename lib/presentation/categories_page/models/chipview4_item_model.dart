// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview4_item_widget] screen.
class Chipview4ItemModel extends Equatable {
  Chipview4ItemModel({
    this.categoryOne,
    this.isSelected,
  }) {
    categoryOne = categoryOne ?? "🏈   Sports";
    isSelected = isSelected ?? false;
  }

  String? categoryOne;

  bool? isSelected;

  Chipview4ItemModel copyWith({
    String? categoryOne,
    bool? isSelected,
  }) {
    return Chipview4ItemModel(
      categoryOne: categoryOne ?? this.categoryOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [categoryOne, isSelected];
}
