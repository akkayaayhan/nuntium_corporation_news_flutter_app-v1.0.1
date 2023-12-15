import '../../../core/app_export.dart';

/// This class is used in the [articlecontent_item_widget] screen.
class ArticlecontentItemModel {
  ArticlecontentItemModel({
    this.uiUxDesignImage,
    this.uiUxDesignText,
    this.simpleTrickText,
    this.id,
  }) {
    uiUxDesignImage = uiUxDesignImage ?? ImageConstant.imgRectangle7;
    uiUxDesignText = uiUxDesignText ?? "UI/UX Design";
    simpleTrickText =
        simpleTrickText ?? "A Simple Trick For Creating Color Palettes Quickly";
    id = id ?? "";
  }

  String? uiUxDesignImage;

  String? uiUxDesignText;

  String? simpleTrickText;

  String? id;
}
