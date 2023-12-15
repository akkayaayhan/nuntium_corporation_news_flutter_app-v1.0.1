import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slider_item_model.dart';
import 'package:flutter_firebase_app/presentation/onboarding_screen/models/onboarding_model.dart';
part 'onboarding_state.dart';

final onboardingNotifier =
    StateNotifierProvider<OnboardingNotifier, OnboardingState>(
  (ref) => OnboardingNotifier(OnboardingState(
    sliderIndex: 0,
    onboardingModelObj: OnboardingModel(
        sliderItemList: List.generate(6, (index) => SliderItemModel())),
  )),
);

/// A notifier that manages the state of a Onboarding according to the event that is dispatched to it.
class OnboardingNotifier extends StateNotifier<OnboardingState> {
  OnboardingNotifier(OnboardingState state) : super(state) {}
}
