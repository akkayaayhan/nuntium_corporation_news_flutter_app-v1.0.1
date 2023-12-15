import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipview_item_model.dart';
import 'package:flutter_firebase_app/presentation/select_your_favorite_topics_screen/models/select_your_favorite_topics_model.dart';
part 'select_your_favorite_topics_state.dart';

final selectYourFavoriteTopicsNotifier = StateNotifierProvider<
    SelectYourFavoriteTopicsNotifier, SelectYourFavoriteTopicsState>(
  (ref) => SelectYourFavoriteTopicsNotifier(SelectYourFavoriteTopicsState(
    selectYourFavoriteTopicsModelObj: SelectYourFavoriteTopicsModel(
        chipviewItemList: List.generate(10, (index) => ChipviewItemModel())),
  )),
);

/// A notifier that manages the state of a SelectYourFavoriteTopics according to the event that is dispatched to it.
class SelectYourFavoriteTopicsNotifier
    extends StateNotifier<SelectYourFavoriteTopicsState> {
  SelectYourFavoriteTopicsNotifier(SelectYourFavoriteTopicsState state)
      : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<ChipviewItemModel> newList = List<ChipviewItemModel>.from(
        state.selectYourFavoriteTopicsModelObj!.chipviewItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        selectYourFavoriteTopicsModelObj: state.selectYourFavoriteTopicsModelObj
            ?.copyWith(chipviewItemList: newList));
  }
}
