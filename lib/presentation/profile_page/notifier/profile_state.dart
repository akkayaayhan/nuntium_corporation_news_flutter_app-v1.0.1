// ignore_for_file: must_be_immutable

part of 'profile_notifier.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.isSelectedSwitch = false,
    this.profileModelObj,
  });

  ProfileModel? profileModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        profileModelObj,
      ];

  ProfileState copyWith({
    bool? isSelectedSwitch,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
