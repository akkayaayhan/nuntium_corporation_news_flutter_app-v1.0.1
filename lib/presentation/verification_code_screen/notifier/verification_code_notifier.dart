import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/verification_code_screen/models/verification_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_code_state.dart';

final verificationCodeNotifier =
    StateNotifierProvider<VerificationCodeNotifier, VerificationCodeState>(
  (ref) => VerificationCodeNotifier(VerificationCodeState(
    otpController: TextEditingController(),
    verificationCodeModelObj: VerificationCodeModel(),
  )),
);

/// A notifier that manages the state of a VerificationCode according to the event that is dispatched to it.
class VerificationCodeNotifier extends StateNotifier<VerificationCodeState>
    with CodeAutoFill {
  VerificationCodeNotifier(VerificationCodeState state) : super(state) {}

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
