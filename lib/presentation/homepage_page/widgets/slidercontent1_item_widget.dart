import '../models/slidercontent1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class Slidercontent1ItemWidget extends StatelessWidget {
  Slidercontent1ItemWidget(
    this.slidercontent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slidercontent1ItemModel slidercontent1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256.adaptSize,
      width: 256.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: slidercontent1ItemModelObj?.image,
            height: 256.adaptSize,
            width: 256.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark11,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 112.v),
                  Text(
                    slidercontent1ItemModelObj.text!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: 205.h,
                    child: Text(
                      slidercontent1ItemModelObj.text1!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnPrimaryBold.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
