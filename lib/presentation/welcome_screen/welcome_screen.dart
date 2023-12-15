import 'notifier/welcome_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 62.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 47.v),
              CustomImageView(
                imagePath: ImageConstant.img3dIllustration,
                height: 272.v,
                width: 375.h,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgNuntium,
                height: 24.v,
                width: 120.h,
              ),
              SizedBox(height: 25.v),
              SizedBox(
                width: 216.h,
                child: Text(
                  "msg_all_news_in_one".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStartedButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 19.h,
        bottom: 50.v,
      ),
    );
  }
}
