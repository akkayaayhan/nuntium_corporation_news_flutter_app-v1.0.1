import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/welcome_screen/models/welcome_model.dart';
part 'welcome_state.dart';

final welcomeNotifier = StateNotifierProvider<WelcomeNotifier, WelcomeState>(
  (ref) => WelcomeNotifier(WelcomeState(
    welcomeModelObj: WelcomeModel(),
  )),
);

/// A notifier that manages the state of a Welcome according to the event that is dispatched to it.
class WelcomeNotifier extends StateNotifier<WelcomeState> {
  WelcomeNotifier(WelcomeState state) : super(state) {}
}
