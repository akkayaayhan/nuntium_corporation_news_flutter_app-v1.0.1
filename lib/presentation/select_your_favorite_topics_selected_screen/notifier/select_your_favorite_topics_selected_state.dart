// ignore_for_file: must_be_immutable

part of 'select_your_favorite_topics_selected_notifier.dart';

/// Represents the state of SelectYourFavoriteTopicsSelected in the application.
class SelectYourFavoriteTopicsSelectedState extends Equatable {
  SelectYourFavoriteTopicsSelectedState(
      {this.selectYourFavoriteTopicsSelectedModelObj});

  SelectYourFavoriteTopicsSelectedModel?
      selectYourFavoriteTopicsSelectedModelObj;

  @override
  List<Object?> get props => [
        selectYourFavoriteTopicsSelectedModelObj,
      ];

  SelectYourFavoriteTopicsSelectedState copyWith(
      {SelectYourFavoriteTopicsSelectedModel?
          selectYourFavoriteTopicsSelectedModelObj}) {
    return SelectYourFavoriteTopicsSelectedState(
      selectYourFavoriteTopicsSelectedModelObj:
          selectYourFavoriteTopicsSelectedModelObj ??
              this.selectYourFavoriteTopicsSelectedModelObj,
    );
  }
}
