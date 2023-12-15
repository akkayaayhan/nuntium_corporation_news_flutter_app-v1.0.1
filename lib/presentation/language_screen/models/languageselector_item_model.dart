import '../../../core/app_export.dart';

/// This class is used in the [languageselector_item_widget] screen.
class LanguageselectorItemModel {
  LanguageselectorItemModel({
    this.selectedLanguage,
    this.languageImage,
    this.id,
  }) {
    selectedLanguage = selectedLanguage ?? "English";
    languageImage = languageImage ?? ImageConstant.imgCheck41;
    id = id ?? "";
  }

  String? selectedLanguage;

  String? languageImage;

  String? id;
}
