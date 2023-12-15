import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/articlelist_item_model.dart';
import 'package:flutter_firebase_app/presentation/homepage_two_page/models/homepage_two_model.dart';
part 'homepage_two_state.dart';

final homepageTwoNotifier =
    StateNotifierProvider<HomepageTwoNotifier, HomepageTwoState>(
  (ref) => HomepageTwoNotifier(HomepageTwoState(
    homepageTwoModelObj: HomepageTwoModel(articlelistItemList: [
      ArticlelistItemModel(
          image: ImageConstant.imgRectangle10,
          title: "A Simple Trick For Creating Color Palettes Quickly"),
      ArticlelistItemModel(
          image: ImageConstant.imgRectangle10192x336,
          title: "The latest situation in the presidential election")
    ]),
  )),
);

/// A notifier that manages the state of a HomepageTwo according to the event that is dispatched to it.
class HomepageTwoNotifier extends StateNotifier<HomepageTwoState> {
  HomepageTwoNotifier(HomepageTwoState state) : super(state) {}
}
