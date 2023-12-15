import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/bookmarks_empty_state_screen/models/bookmarks_empty_state_model.dart';
part 'bookmarks_empty_state_state.dart';

final bookmarksEmptyStateNotifier = StateNotifierProvider<
    BookmarksEmptyStateNotifier, BookmarksEmptyStateState>(
  (ref) => BookmarksEmptyStateNotifier(BookmarksEmptyStateState(
    bookmarksEmptyStateModelObj: BookmarksEmptyStateModel(),
  )),
);

/// A notifier that manages the state of a BookmarksEmptyState according to the event that is dispatched to it.
class BookmarksEmptyStateNotifier
    extends StateNotifier<BookmarksEmptyStateState> {
  BookmarksEmptyStateNotifier(BookmarksEmptyStateState state) : super(state) {}
}
