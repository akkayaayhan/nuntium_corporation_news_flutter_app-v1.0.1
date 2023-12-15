import 'notifier/app_navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "01 - Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "02 - Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03 - Welcome Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04 - Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05 - Sign In (Typing)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTypingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "06 - Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "07 - Verification Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08 - Create new password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "09 - Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10 - Sign Up (Typing)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpTypingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "11 - Select your favorite topics".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectYourFavoriteTopicsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "12 - Select your favorite topics (Selected)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectYourFavoriteTopicsSelectedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13 - Homepage - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "17 - Bookmarks Empty State".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookmarksEmptyStateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "18 - Article Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.articlePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "19 - Article Page Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.articlePageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "20 - Article Page Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.articlePageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "22 - Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "23 - Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "24 - Terms & Conditions".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.termsConditionsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
