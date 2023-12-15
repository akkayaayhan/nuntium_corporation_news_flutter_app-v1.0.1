import 'notifier/article_page_three_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';

class ArticlePageThreeScreen extends ConsumerStatefulWidget {
  const ArticlePageThreeScreen({Key? key}) : super(key: key);

  @override
  ArticlePageThreeScreenState createState() => ArticlePageThreeScreenState();
}

class ArticlePageThreeScreenState
    extends ConsumerState<ArticlePageThreeScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage192x336,
                                  height: 192.v,
                                  width: 336.h,
                                  radius: BorderRadius.circular(16.h)),
                              SizedBox(height: 24.v),
                              CustomElevatedButton(
                                  height: 32.v,
                                  width: 100.h,
                                  text: "lbl_us_election".tr,
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL16,
                                  buttonTextStyle: theme.textTheme.labelLarge!),
                              SizedBox(height: 17.v),
                              Container(
                                  width: 256.h,
                                  margin: EdgeInsets.only(right: 79.h),
                                  child: Text("msg_the_latest_situation".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleLargeOnPrimaryContainer_1
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_john_doe".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryContainer_1),
                                          SizedBox(height: 6.v),
                                          Text("lbl_designer".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ]))
                              ]),
                              SizedBox(height: 34.v),
                              Text("lbl_results".tr,
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryContainer_1),
                              SizedBox(height: 11.v),
                              Container(
                                  width: 324.h,
                                  margin: EdgeInsets.only(right: 11.h),
                                  child: Text("msg_leads_in_individual2".tr,
                                      maxLines: 10,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray500
                                          .copyWith(height: 1.50)))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray400,
            margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShareIconBlueGray400,
              margin: EdgeInsets.only(left: 19.h, top: 16.v, right: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBookmark11BlueGray400,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 35.h))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
