import '../models/articlecontent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class ArticlecontentItemWidget extends StatelessWidget {
  ArticlecontentItemWidget(
    this.articlecontentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArticlecontentItemModel articlecontentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: articlecontentItemModelObj?.uiUxDesignImage,
          height: 96.adaptSize,
          width: 96.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 10.v,
            bottom: 10.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                articlecontentItemModelObj.uiUxDesignText!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: 213.h,
                child: Text(
                  articlecontentItemModelObj.simpleTrickText!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.titleMediumOnPrimaryContainer_1.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
