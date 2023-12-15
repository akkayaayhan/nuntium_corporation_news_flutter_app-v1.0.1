// ignore_for_file: must_be_immutable

part of 'bookmarks_notifier.dart';

/// Represents the state of Bookmarks in the application.
class BookmarksState extends Equatable {
  BookmarksState({this.bookmarksModelObj});

  BookmarksModel? bookmarksModelObj;

  @override
  List<Object?> get props => [
        bookmarksModelObj,
      ];

  BookmarksState copyWith({BookmarksModel? bookmarksModelObj}) {
    return BookmarksState(
      bookmarksModelObj: bookmarksModelObj ?? this.bookmarksModelObj,
    );
  }
}
