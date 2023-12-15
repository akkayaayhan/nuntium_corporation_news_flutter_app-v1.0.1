import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/sign_up_typing_screen/models/sign_up_typing_model.dart';
part 'sign_up_typing_state.dart';

final signUpTypingNotifier =
    StateNotifierProvider<SignUpTypingNotifier, SignUpTypingState>(
  (ref) => SignUpTypingNotifier(SignUpTypingState(
    namePlaceholderController: TextEditingController(),
    emailPlaceholderController: TextEditingController(),
    passwordController: TextEditingController(),
    passwordController1: TextEditingController(),
    signUpTypingModelObj: SignUpTypingModel(),
  )),
);

/// A notifier that manages the state of a SignUpTyping according to the event that is dispatched to it.
class SignUpTypingNotifier extends StateNotifier<SignUpTypingState> {
  SignUpTypingNotifier(SignUpTypingState state) : super(state) {}
}
