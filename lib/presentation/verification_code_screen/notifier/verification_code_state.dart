// ignore_for_file: must_be_immutable

part of 'verification_code_notifier.dart';

/// Represents the state of VerificationCode in the application.
class VerificationCodeState extends Equatable {
  VerificationCodeState({
    this.otpController,
    this.verificationCodeModelObj,
  });

  TextEditingController? otpController;

  VerificationCodeModel? verificationCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationCodeModelObj,
      ];

  VerificationCodeState copyWith({
    TextEditingController? otpController,
    VerificationCodeModel? verificationCodeModelObj,
  }) {
    return VerificationCodeState(
      otpController: otpController ?? this.otpController,
      verificationCodeModelObj:
          verificationCodeModelObj ?? this.verificationCodeModelObj,
    );
  }
}
