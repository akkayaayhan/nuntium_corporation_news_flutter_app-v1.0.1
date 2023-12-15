import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidercontent1_item_model.dart';
import 'package:flutter_firebase_app/presentation/homepage_page/models/homepage_model.dart';
part 'homepage_state.dart';

final homepageNotifier = StateNotifierProvider<HomepageNotifier, HomepageState>(
  (ref) => HomepageNotifier(HomepageState(
    homepageModelObj: HomepageModel(slidercontent1ItemList: [
      Slidercontent1ItemModel(
          image: ImageConstant.imgRectangle6,
          text: "POLITICS",
          text1: "The latest situation in the presidential election"),
      Slidercontent1ItemModel(image: ImageConstant.imgRectangle6256x256)
    ]),
  )),
);

/// A notifier that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageNotifier extends StateNotifier<HomepageState> {
  HomepageNotifier(HomepageState state) : super(state) {}
}
