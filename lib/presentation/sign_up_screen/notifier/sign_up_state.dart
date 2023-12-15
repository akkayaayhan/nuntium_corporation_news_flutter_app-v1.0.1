// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.userNameController,
    this.emailController,
    this.passwordController,
    this.passwordController1,
    this.signUpModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        emailController,
        passwordController,
        passwordController1,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? userNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      userNameController: userNameController ?? this.userNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
