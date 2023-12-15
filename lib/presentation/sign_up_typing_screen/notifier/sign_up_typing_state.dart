// ignore_for_file: must_be_immutable

part of 'sign_up_typing_notifier.dart';

/// Represents the state of SignUpTyping in the application.
class SignUpTypingState extends Equatable {
  SignUpTypingState({
    this.namePlaceholderController,
    this.emailPlaceholderController,
    this.passwordController,
    this.passwordController1,
    this.signUpTypingModelObj,
  });

  TextEditingController? namePlaceholderController;

  TextEditingController? emailPlaceholderController;

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  SignUpTypingModel? signUpTypingModelObj;

  @override
  List<Object?> get props => [
        namePlaceholderController,
        emailPlaceholderController,
        passwordController,
        passwordController1,
        signUpTypingModelObj,
      ];

  SignUpTypingState copyWith({
    TextEditingController? namePlaceholderController,
    TextEditingController? emailPlaceholderController,
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    SignUpTypingModel? signUpTypingModelObj,
  }) {
    return SignUpTypingState(
      namePlaceholderController:
          namePlaceholderController ?? this.namePlaceholderController,
      emailPlaceholderController:
          emailPlaceholderController ?? this.emailPlaceholderController,
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      signUpTypingModelObj: signUpTypingModelObj ?? this.signUpTypingModelObj,
    );
  }
}
