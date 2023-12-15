import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/sign_in_typing_screen/models/sign_in_typing_model.dart';
part 'sign_in_typing_state.dart';

final signInTypingNotifier =
    StateNotifierProvider<SignInTypingNotifier, SignInTypingState>(
  (ref) => SignInTypingNotifier(SignInTypingState(
    emailPlaceholderController: TextEditingController(),
    passwordController: TextEditingController(),
    isShowPassword: false,
    signInTypingModelObj: SignInTypingModel(),
  )),
);

/// A notifier that manages the state of a SignInTyping according to the event that is dispatched to it.
class SignInTypingNotifier extends StateNotifier<SignInTypingState> {
  SignInTypingNotifier(SignInTypingState state) : super(state) {}

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}
