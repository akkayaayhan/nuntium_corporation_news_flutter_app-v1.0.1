import 'notifier/sign_in_typing_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';

class SignInTypingScreen extends ConsumerStatefulWidget {
  const SignInTypingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignInTypingScreenState createState() => SignInTypingScreenState();
}

class SignInTypingScreenState extends ConsumerState<SignInTypingScreen> {
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 303.h,
                    margin: EdgeInsets.only(right: 32.h),
                    child: Text(
                      "msg_i_am_happy_to_see".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomTextFormField(
                      controller: ref
                          .watch(signInTypingNotifier)
                          .emailPlaceholderController,
                      hintText: "lbl_ertuken_gma".tr,
                      hintStyle:
                          CustomTextStyles.titleMediumOnPrimaryContainerMedium,
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
                ),
                SizedBox(height: 16.v),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomTextFormField(
                      controller:
                          ref.watch(signInTypingNotifier).passwordController,
                      hintText: "lbl".tr,
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
                      suffix: InkWell(
                        onTap: () {
                          ref
                              .read(signInTypingNotifier.notifier)
                              .changePasswordVisibility();
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEye11,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 56.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText:
                          ref.watch(signInTypingNotifier).isShowPassword,
                      contentPadding: EdgeInsets.symmetric(vertical: 18.v),
                    );
                  },
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_forgot_password".tr,
                    style: CustomTextStyles.titleMediumBluegray400Medium_1,
                  ),
                ),
                SizedBox(height: 24.v),
                CustomElevatedButton(
                  text: "lbl_sign_in".tr,
                ),
                SizedBox(height: 5.v),
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
        text: "lbl_welcome_back".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }
}
