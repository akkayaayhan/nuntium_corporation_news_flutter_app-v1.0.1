import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/terms_conditions_screen/models/terms_conditions_model.dart';
part 'terms_conditions_state.dart';

final termsConditionsNotifier = StateNotifierProvider<TermsConditionsNotifier,
        TermsConditionsState>(
    (ref) => TermsConditionsNotifier(
        TermsConditionsState(termsConditionsModelObj: TermsConditionsModel())));

/// A notifier that manages the state of a TermsConditions according to the event that is dispatched to it.
class TermsConditionsNotifier extends StateNotifier<TermsConditionsState> {
  TermsConditionsNotifier(TermsConditionsState state) : super(state);
}
