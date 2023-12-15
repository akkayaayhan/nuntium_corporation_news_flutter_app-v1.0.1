// ignore_for_file: must_be_immutable

part of 'onboarding_notifier.dart';

/// Represents the state of Onboarding in the application.
class OnboardingState extends Equatable {
  OnboardingState({
    this.sliderIndex = 0,
    this.onboardingModelObj,
  });

  OnboardingModel? onboardingModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        onboardingModelObj,
      ];

  OnboardingState copyWith({
    int? sliderIndex,
    OnboardingModel? onboardingModelObj,
  }) {
    return OnboardingState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      onboardingModelObj: onboardingModelObj ?? this.onboardingModelObj,
    );
  }
}
