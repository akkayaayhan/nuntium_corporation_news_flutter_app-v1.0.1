import 'notifier/sign_up_typing_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';

class SignUpTypingScreen extends ConsumerStatefulWidget {
  const SignUpTypingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpTypingScreenState createState() => SignUpTypingScreenState();
}

class SignUpTypingScreenState extends ConsumerState<SignUpTypingScreen> {
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
                _buildNamePlaceholder(context),
                SizedBox(height: 16.v),
                _buildEmailPlaceholder(context),
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
  Widget _buildNamePlaceholder(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(signUpTypingNotifier).namePlaceholderController,
          hintText: "lbl_eren".tr,
          hintStyle: CustomTextStyles.titleMediumOnPrimaryContainerMedium,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgUser51Primary,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailPlaceholder(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(signUpTypingNotifier).emailPlaceholderController,
          hintText: "lbl_ertuken_gma".tr,
          hintStyle: CustomTextStyles.titleMediumOnPrimaryContainerMedium,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEnvelope21Primary,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(signUpTypingNotifier).passwordController,
          hintText: "lbl".tr,
          hintStyle: CustomTextStyles.titleMediumOnPrimaryContainerMedium,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgPadlock21Primary,
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
          controller: ref.watch(signUpTypingNotifier).passwordController1,
          hintText: "lbl".tr,
          hintStyle: CustomTextStyles.titleMediumOnPrimaryContainerMedium,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgPadlock21Primary,
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
