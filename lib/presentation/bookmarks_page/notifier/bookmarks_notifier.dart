import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/articlecontent_item_model.dart';
import 'package:flutter_firebase_app/presentation/bookmarks_page/models/bookmarks_model.dart';
part 'bookmarks_state.dart';

final bookmarksNotifier =
    StateNotifierProvider<BookmarksNotifier, BookmarksState>(
  (ref) => BookmarksNotifier(BookmarksState(
    bookmarksModelObj: BookmarksModel(articlecontentItemList: [
      ArticlecontentItemModel(
          uiUxDesignImage: ImageConstant.imgRectangle7,
          uiUxDesignText: "UI/UX Design",
          simpleTrickText:
              "A Simple Trick For Creating Color Palettes Quickly"),
      ArticlecontentItemModel(
          uiUxDesignImage: ImageConstant.imgRectangle796x96,
          uiUxDesignText: "Art",
          simpleTrickText: "Six steps to creating a color palette"),
      ArticlecontentItemModel(
          uiUxDesignImage: ImageConstant.imgRectangle71,
          uiUxDesignText: "Colors",
          simpleTrickText: "Creating Color Palette from world around you"),
      ArticlecontentItemModel(
          uiUxDesignImage: ImageConstant.imgRectangle7,
          uiUxDesignText: "UI/UX Design",
          simpleTrickText: "A Simple Trick For Creating Color Palettes Quickly")
    ]),
  )),
);

/// A notifier that manages the state of a Bookmarks according to the event that is dispatched to it.
class BookmarksNotifier extends StateNotifier<BookmarksState> {
  BookmarksNotifier(BookmarksState state) : super(state) {}
}
