import 'notifier/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(19.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse572x72,
                        height: 72.adaptSize,
                        width: 72.adaptSize,
                        radius: BorderRadius.circular(
                          36.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.h,
                          top: 14.v,
                          bottom: 14.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_eren_turkmen".tr,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer_1,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "msg_ertuken_gmail_com".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              _buildNotifications(context),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildChangePassword(
                  context,
                  changePasswordText: "lbl_language".tr,
                  arrowRightImage: ImageConstant.imgArrowRight,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildChangePassword(
                  context,
                  changePasswordText: "lbl_change_password".tr,
                  arrowRightImage: ImageConstant.imgArrowRight,
                ),
              ),
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildChangePassword(
                  context,
                  changePasswordText: "lbl_privacy".tr,
                  arrowRightImage: ImageConstant.imgArrowRight,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildChangePassword(
                  context,
                  changePasswordText: "msg_terms_conditions".tr,
                  arrowRightImage: ImageConstant.imgArrowRight,
                ),
              ),
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildChangePassword(
                  context,
                  changePasswordText: "lbl_sign_out".tr,
                  arrowRightImage: ImageConstant.imgSignout1,
                ),
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_profile".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_notifications".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Consumer(
            builder: (context, ref, _) {
              return CustomSwitch(
                value: ref.watch(profileNotifier).isSelectedSwitch,
                onChange: (value) {
                  ref.read(profileNotifier.notifier).changeSwitchBox1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChangePassword(
    BuildContext context, {
    required String changePasswordText,
    required String arrowRightImage,
  }) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
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
              changePasswordText,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.blueGray500,
              ),
            ),
          ),
          CustomImageView(
            imagePath: arrowRightImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
