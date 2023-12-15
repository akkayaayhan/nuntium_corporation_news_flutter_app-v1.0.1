import '../../../core/app_export.dart';

/// This class is used in the [slidercontent1_item_widget] screen.
class Slidercontent1ItemModel {
  Slidercontent1ItemModel({
    this.image,
    this.text,
    this.text1,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle6;
    text = text ?? "POLITICS";
    text1 = text1 ?? "The latest situation in the presidential election";
    id = id ?? "";
  }

  String? image;

  String? text;

  String? text1;

  String? id;
}
