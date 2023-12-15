import '../models/languageselector_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class LanguageselectorItemWidget extends StatelessWidget {
  LanguageselectorItemWidget(
    this.languageselectorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguageselectorItemModel languageselectorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
            ),
            child: Text(
              languageselectorItemModelObj.selectedLanguage!,
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          CustomImageView(
            imagePath: languageselectorItemModelObj?.languageImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
