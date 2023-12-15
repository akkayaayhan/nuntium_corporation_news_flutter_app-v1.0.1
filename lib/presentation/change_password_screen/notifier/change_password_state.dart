// ignore_for_file: must_be_immutable

part of 'change_password_notifier.dart';

/// Represents the state of ChangePassword in the application.
class ChangePasswordState extends Equatable {
  ChangePasswordState({
    this.passwordEditTextController,
    this.newPasswordEditTextController,
    this.confirmPasswordEditTextController,
    this.changePasswordModelObj,
  });

  TextEditingController? passwordEditTextController;

  TextEditingController? newPasswordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  ChangePasswordModel? changePasswordModelObj;

  @override
  List<Object?> get props => [
        passwordEditTextController,
        newPasswordEditTextController,
        confirmPasswordEditTextController,
        changePasswordModelObj,
      ];

  ChangePasswordState copyWith({
    TextEditingController? passwordEditTextController,
    TextEditingController? newPasswordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    ChangePasswordModel? changePasswordModelObj,
  }) {
    return ChangePasswordState(
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      newPasswordEditTextController:
          newPasswordEditTextController ?? this.newPasswordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      changePasswordModelObj:
          changePasswordModelObj ?? this.changePasswordModelObj,
    );
  }
}
