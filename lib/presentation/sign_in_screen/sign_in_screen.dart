import 'notifier/sign_in_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_outlined_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';
import 'package:flutter_firebase_app/domain/googleauth/google_auth_helper.dart';
import 'package:flutter_firebase_app/domain/facebookauth/facebook_auth_helper.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();
}

// ignore_for_file: must_be_immutable
class SignInScreenState extends ConsumerState<SignInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 303.h,
                              margin: EdgeInsets.only(right: 32.h),
                              child: Text("msg_i_am_happy_to_see".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.50)))),
                      SizedBox(height: 30.v),
                      _buildEmail(context),
                      SizedBox(height: 16.v),
                      _buildPassword(context),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_forgot_password".tr,
                              style: CustomTextStyles
                                  .titleMediumBluegray400Medium_1)),
                      SizedBox(height: 24.v),
                      _buildSignIn(context),
                      SizedBox(height: 51.v),
                      Text("lbl_or".tr,
                          style: CustomTextStyles.titleMediumBluegray400),
                      SizedBox(height: 48.v),
                      _buildSignInWithGoogle(context),
                      SizedBox(height: 16.v),
                      _buildSignInWithFacebook(context),
                      SizedBox(height: 57.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_have_an_account2".tr,
                                style: CustomTextStyles
                                    .titleMediumSecondaryContainer),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainerMedium_1)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_welcome_back".tr, margin: EdgeInsets.only(left: 20.h)));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signInNotifier).emailController,
          hintText: "lbl_email_adress".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEnvelope21,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 56.v),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          });
    });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref.watch(signInNotifier).passwordController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPadlock21,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 56.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true);
    });
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(text: "lbl_sign_in".tr);
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGooglelogo,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapSignInWithGoogle(context);
        });
  }

  /// Section Widget
  Widget _buildSignInWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebooklogo,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapSignInWithFacebook(context);
        });
  }

  onTapSignInWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapSignInWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
