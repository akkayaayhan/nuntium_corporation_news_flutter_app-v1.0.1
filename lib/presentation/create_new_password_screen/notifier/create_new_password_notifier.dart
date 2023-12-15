import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/create_new_password_screen/models/create_new_password_model.dart';
part 'create_new_password_state.dart';

final createNewPasswordNotifier =
    StateNotifierProvider<CreateNewPasswordNotifier, CreateNewPasswordState>(
  (ref) => CreateNewPasswordNotifier(CreateNewPasswordState(
    newpasswordController: TextEditingController(),
    newpasswordController1: TextEditingController(),
    createNewPasswordModelObj: CreateNewPasswordModel(),
  )),
);

/// A notifier that manages the state of a CreateNewPassword according to the event that is dispatched to it.
class CreateNewPasswordNotifier extends StateNotifier<CreateNewPasswordState> {
  CreateNewPasswordNotifier(CreateNewPasswordState state) : super(state) {}
}
