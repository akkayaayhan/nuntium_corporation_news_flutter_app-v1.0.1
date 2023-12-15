import '../../../core/app_export.dart';

/// This class is used in the [articlelist_item_widget] screen.
class ArticlelistItemModel {
  ArticlelistItemModel({
    this.image,
    this.title,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle10;
    title = title ?? "A Simple Trick For Creating Color Palettes Quickly";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? id;
}
