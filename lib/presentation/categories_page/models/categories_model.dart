// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview4_item_model.dart';

/// This class defines the variables used in the [categories_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel extends Equatable {
  CategoriesModel({this.chipview4ItemList = const []}) {}

  List<Chipview4ItemModel> chipview4ItemList;

  CategoriesModel copyWith({List<Chipview4ItemModel>? chipview4ItemList}) {
    return CategoriesModel(
      chipview4ItemList: chipview4ItemList ?? this.chipview4ItemList,
    );
  }

  @override
  List<Object?> get props => [chipview4ItemList];
}
