// ignore_for_file: must_be_immutable

part of 'homepage_two_notifier.dart';

/// Represents the state of HomepageTwo in the application.
class HomepageTwoState extends Equatable {
  HomepageTwoState({this.homepageTwoModelObj});

  HomepageTwoModel? homepageTwoModelObj;

  @override
  List<Object?> get props => [
        homepageTwoModelObj,
      ];

  HomepageTwoState copyWith({HomepageTwoModel? homepageTwoModelObj}) {
    return HomepageTwoState(
      homepageTwoModelObj: homepageTwoModelObj ?? this.homepageTwoModelObj,
    );
  }
}
