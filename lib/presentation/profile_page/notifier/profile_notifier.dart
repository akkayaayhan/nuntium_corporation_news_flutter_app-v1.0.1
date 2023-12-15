import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/profile_page/models/profile_model.dart';
part 'profile_state.dart';

final profileNotifier = StateNotifierProvider<ProfileNotifier, ProfileState>(
  (ref) => ProfileNotifier(ProfileState(
    isSelectedSwitch: false,
    profileModelObj: ProfileModel(),
  )),
);

/// A notifier that manages the state of a Profile according to the event that is dispatched to it.
class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(ProfileState state) : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}
