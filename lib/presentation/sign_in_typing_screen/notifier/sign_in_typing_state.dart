// ignore_for_file: must_be_immutable

part of 'sign_in_typing_notifier.dart';

/// Represents the state of SignInTyping in the application.
class SignInTypingState extends Equatable {
  SignInTypingState({
    this.emailPlaceholderController,
    this.passwordController,
    this.isShowPassword = true,
    this.signInTypingModelObj,
  });

  TextEditingController? emailPlaceholderController;

  TextEditingController? passwordController;

  SignInTypingModel? signInTypingModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailPlaceholderController,
        passwordController,
        isShowPassword,
        signInTypingModelObj,
      ];

  SignInTypingState copyWith({
    TextEditingController? emailPlaceholderController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignInTypingModel? signInTypingModelObj,
  }) {
    return SignInTypingState(
      emailPlaceholderController:
          emailPlaceholderController ?? this.emailPlaceholderController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signInTypingModelObj: signInTypingModelObj ?? this.signInTypingModelObj,
    );
  }
}
