// ignore_for_file: must_be_immutable

part of 'bookmarks_empty_state_notifier.dart';

/// Represents the state of BookmarksEmptyState in the application.
class BookmarksEmptyStateState extends Equatable {
  BookmarksEmptyStateState({this.bookmarksEmptyStateModelObj});

  BookmarksEmptyStateModel? bookmarksEmptyStateModelObj;

  @override
  List<Object?> get props => [
        bookmarksEmptyStateModelObj,
      ];

  BookmarksEmptyStateState copyWith(
      {BookmarksEmptyStateModel? bookmarksEmptyStateModelObj}) {
    return BookmarksEmptyStateState(
      bookmarksEmptyStateModelObj:
          bookmarksEmptyStateModelObj ?? this.bookmarksEmptyStateModelObj,
    );
  }
}
