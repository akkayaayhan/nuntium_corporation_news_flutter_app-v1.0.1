import '../models/articlelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class ArticlelistItemWidget extends StatelessWidget {
  ArticlelistItemWidget(
    this.articlelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArticlelistItemModel articlelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: articlelistItemModelObj?.image,
            height: 192.v,
            width: 336.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(16.h),
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 28.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 213.h,
                    child: Text(
                      articlelistItemModelObj.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer_1
                          .copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark11BlueGray400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 55.h,
                    top: 10.v,
                    bottom: 13.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
