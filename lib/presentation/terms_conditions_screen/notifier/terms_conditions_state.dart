// ignore_for_file: must_be_immutable

part of 'terms_conditions_notifier.dart';

/// Represents the state of TermsConditions in the application.
class TermsConditionsState extends Equatable {
  TermsConditionsState({this.termsConditionsModelObj});

  TermsConditionsModel? termsConditionsModelObj;

  @override
  List<Object?> get props => [
        termsConditionsModelObj,
      ];

  TermsConditionsState copyWith(
      {TermsConditionsModel? termsConditionsModelObj}) {
    return TermsConditionsState(
      termsConditionsModelObj:
          termsConditionsModelObj ?? this.termsConditionsModelObj,
    );
  }
}
