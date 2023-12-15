import 'notifier/sign_up_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends ConsumerState<SignUpScreen> {
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
            child: Column(
              children: [
                SizedBox(
                  width: 332.h,
                  child: Text(
                    "msg_hello_i_guess_you".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                _buildUserName(context),
                SizedBox(height: 16.v),
                _buildEmail(context),
                SizedBox(height: 16.v),
                _buildPassword(context),
                SizedBox(height: 16.v),
                _buildPassword1(context),
                SizedBox(height: 16.v),
                _buildSignUp(context),
                Spacer(),
                SizedBox(height: 46.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: CustomTextStyles.titleMediumSecondaryContainer,
                      ),
                      TextSpan(
                        text: "lbl_sign_in2".tr,
                        style: CustomTextStyles
                            .titleMediumOnPrimaryContainerMedium_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_welcome_to_nuntium".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(signUpNotifier).userNameController,
          hintText: "lbl_username".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgUser51,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(signUpNotifier).emailController,
          hintText: "lbl_email_adress".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEnvelope21,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(signUpNotifier).passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgPadlock21,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(signUpNotifier).passwordController1,
          hintText: "lbl_repeat_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgPadlock21,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_sign_up2".tr,
    );
  }
}
