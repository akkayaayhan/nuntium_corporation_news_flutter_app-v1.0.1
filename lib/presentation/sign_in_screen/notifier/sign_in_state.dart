// ignore_for_file: must_be_immutable

part of 'sign_in_notifier.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.emailController,
    this.passwordController,
    this.signInModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        signInModelObj,
      ];

  SignInState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
