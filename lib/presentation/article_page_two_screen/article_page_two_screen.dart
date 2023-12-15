import 'notifier/article_page_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';

class ArticlePageTwoScreen extends ConsumerStatefulWidget {
  const ArticlePageTwoScreen({Key? key}) : super(key: key);

  @override
  ArticlePageTwoScreenState createState() => ArticlePageTwoScreenState();
}

class ArticlePageTwoScreenState extends ConsumerState<ArticlePageTwoScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildMainContent(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 448.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    _buildContentBackground(context),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h, right: 30.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_results".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumOnPrimaryContainer_1),
                                                  SizedBox(height: 11.v),
                                                  SizedBox(
                                                      width: 324.h,
                                                      child: Text(
                                                          "msg_leads_in_individual2"
                                                              .tr,
                                                          maxLines: 17,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyLargeBluegray500
                                                              .copyWith(
                                                                  height:
                                                                      1.50)))
                                                ])))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildMainContent(BuildContext context) {
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
                        SizedBox(height: 24.v),
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
                                    .copyWith(height: 1.40))),
                        SizedBox(height: 22.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse5,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              radius: BorderRadius.circular(24.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 2.v, bottom: 2.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_john_doe".tr,
                                        style: CustomTextStyles
                                            .titleMediumOnPrimary),
                                    SizedBox(height: 6.v),
                                    Text("lbl_designer".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBluegray200)
                                  ]))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildContentBackground(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            height: 444.v,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(24.h)))));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
