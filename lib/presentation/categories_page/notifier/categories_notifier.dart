import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipview4_item_model.dart';
import 'package:flutter_firebase_app/presentation/categories_page/models/categories_model.dart';
part 'categories_state.dart';

final categoriesNotifier =
    StateNotifierProvider<CategoriesNotifier, CategoriesState>(
  (ref) => CategoriesNotifier(CategoriesState(
    categoriesModelObj: CategoriesModel(
        chipview4ItemList: List.generate(12, (index) => Chipview4ItemModel())),
  )),
);

/// A notifier that manages the state of a Categories according to the event that is dispatched to it.
class CategoriesNotifier extends StateNotifier<CategoriesState> {
  CategoriesNotifier(CategoriesState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Chipview4ItemModel> newList = List<Chipview4ItemModel>.from(
        state.categoriesModelObj!.chipview4ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        categoriesModelObj:
            state.categoriesModelObj?.copyWith(chipview4ItemList: newList));
  }
}
