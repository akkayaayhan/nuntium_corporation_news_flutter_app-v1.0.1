// ignore_for_file: must_be_immutable

part of 'homepage_notifier.dart';

/// Represents the state of Homepage in the application.
class HomepageState extends Equatable {
  HomepageState({this.homepageModelObj});

  HomepageModel? homepageModelObj;

  @override
  List<Object?> get props => [
        homepageModelObj,
      ];

  HomepageState copyWith({HomepageModel? homepageModelObj}) {
    return HomepageState(
      homepageModelObj: homepageModelObj ?? this.homepageModelObj,
    );
  }
}
