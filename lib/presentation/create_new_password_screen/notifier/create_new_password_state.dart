// ignore_for_file: must_be_immutable

part of 'create_new_password_notifier.dart';

/// Represents the state of CreateNewPassword in the application.
class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.newpasswordController,
    this.newpasswordController1,
    this.createNewPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordController1;

  CreateNewPasswordModel? createNewPasswordModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        newpasswordController1,
        createNewPasswordModelObj,
      ];

  CreateNewPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordController1,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordController1:
          newpasswordController1 ?? this.newpasswordController1,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
