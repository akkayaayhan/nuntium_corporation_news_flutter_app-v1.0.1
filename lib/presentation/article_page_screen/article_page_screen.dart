import 'notifier/article_page_notifier.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';

class ArticlePageScreen extends ConsumerStatefulWidget {
  const ArticlePageScreen({Key? key}) : super(key: key);

  @override
  ArticlePageScreenState createState() => ArticlePageScreenState();
}

class ArticlePageScreenState extends ConsumerState<ArticlePageScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildStackTwo(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 488.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 444.v,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme.onPrimary,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            24.h))))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 19.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_results".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumOnPrimaryContainer_1),
                                                  SizedBox(height: 11.v),
                                                  Container(
                                                      width: 324.h,
                                                      margin: EdgeInsets.only(
                                                          right: 11.h),
                                                      child: Text(
                                                          "msg_leads_in_individual"
                                                              .tr,
                                                          maxLines: 9,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyLargeBluegray500
                                                              .copyWith(
                                                                  height:
                                                                      1.50))),
                                                  SizedBox(height: 22.v),
                                                  _buildColumnImageArea(context)
                                                ])))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildStackTwo(BuildContext context) {
    return SizedBox(
        height: 340.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 340.v,
              width: 375.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 19.h, top: 28.v, right: 19.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 24.v,
                            leadingWidth: 44.h,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgArrowLeft,
                                margin: EdgeInsets.only(left: 20.h),
                                onTap: () {
                                  onTapArrowLeft(context);
                                }),
                            actions: [
                              AppbarTrailingImage(
                                  imagePath: ImageConstant.imgBookmark11,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 19.h))
                            ]),
                        SizedBox(height: 24.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgShareIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.centerRight),
                        SizedBox(height: 96.v),
                        CustomElevatedButton(
                            height: 32.v,
                            width: 100.h,
                            text: "lbl_us_election".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                            buttonTextStyle: theme.textTheme.labelLarge!),
                        SizedBox(height: 17.v),
                        Container(
                            width: 256.h,
                            margin: EdgeInsets.only(right: 79.h),
                            child: Text("msg_the_latest_situation".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge!
                                    .copyWith(height: 1.40)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildColumnImageArea(BuildContext context) {
    return DottedBorder(
        color: appTheme.blueGray400,
        padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
        strokeWidth: 1.h,
        radius: Radius.circular(16),
        borderType: BorderType.RRect,
        dashPattern: [8, 8],
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 138.h, vertical: 64.v),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 17.v),
                  SizedBox(
                      width: 58.h,
                      child: Text("lbl_image_336x192".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.57)))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
