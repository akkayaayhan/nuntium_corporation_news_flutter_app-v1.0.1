// ignore_for_file: must_be_immutable

part of 'select_your_favorite_topics_notifier.dart';

/// Represents the state of SelectYourFavoriteTopics in the application.
class SelectYourFavoriteTopicsState extends Equatable {
  SelectYourFavoriteTopicsState({this.selectYourFavoriteTopicsModelObj});

  SelectYourFavoriteTopicsModel? selectYourFavoriteTopicsModelObj;

  @override
  List<Object?> get props => [
        selectYourFavoriteTopicsModelObj,
      ];

  SelectYourFavoriteTopicsState copyWith(
      {SelectYourFavoriteTopicsModel? selectYourFavoriteTopicsModelObj}) {
    return SelectYourFavoriteTopicsState(
      selectYourFavoriteTopicsModelObj: selectYourFavoriteTopicsModelObj ??
          this.selectYourFavoriteTopicsModelObj,
    );
  }
}
