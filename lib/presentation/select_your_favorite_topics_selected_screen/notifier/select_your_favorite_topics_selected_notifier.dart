import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipview2_item_model.dart';
import 'package:flutter_firebase_app/presentation/select_your_favorite_topics_selected_screen/models/select_your_favorite_topics_selected_model.dart';
part 'select_your_favorite_topics_selected_state.dart';

final selectYourFavoriteTopicsSelectedNotifier = StateNotifierProvider<
    SelectYourFavoriteTopicsSelectedNotifier,
    SelectYourFavoriteTopicsSelectedState>(
  (ref) => SelectYourFavoriteTopicsSelectedNotifier(
      SelectYourFavoriteTopicsSelectedState(
    selectYourFavoriteTopicsSelectedModelObj:
        SelectYourFavoriteTopicsSelectedModel(
            chipview2ItemList:
                List.generate(10, (index) => Chipview2ItemModel())),
  )),
);

/// A notifier that manages the state of a SelectYourFavoriteTopicsSelected according to the event that is dispatched to it.
class SelectYourFavoriteTopicsSelectedNotifier
    extends StateNotifier<SelectYourFavoriteTopicsSelectedState> {
  SelectYourFavoriteTopicsSelectedNotifier(
      SelectYourFavoriteTopicsSelectedState state)
      : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Chipview2ItemModel> newList = List<Chipview2ItemModel>.from(
        state.selectYourFavoriteTopicsSelectedModelObj!.chipview2ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        selectYourFavoriteTopicsSelectedModelObj: state
            .selectYourFavoriteTopicsSelectedModelObj
            ?.copyWith(chipview2ItemList: newList));
  }
}
