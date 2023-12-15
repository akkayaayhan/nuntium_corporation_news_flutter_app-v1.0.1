import 'notifier/forgot_password_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
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
                    width: 323.h,
                    margin: EdgeInsets.only(right: 12.h),
                    child: Text(
                      "msg_we_need_your_email".tr,
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
                      controller:
                          ref.watch(forgotPasswordNotifier).emailController,
                      hintText: "lbl_email_adress".tr,
                      textInputAction: TextInputAction.done,
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
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  text: "lbl_next".tr,
                ),
                Spacer(),
                SizedBox(height: 46.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_remember_the_password2".tr,
                        style: CustomTextStyles.titleMediumBluegray400Medium,
                      ),
                      TextSpan(
                        text: "lbl_try_again".tr,
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
        text: "msg_forgot_password2".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }
}
