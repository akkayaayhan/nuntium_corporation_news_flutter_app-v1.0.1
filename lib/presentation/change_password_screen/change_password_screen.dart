import 'notifier/change_password_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  ChangePasswordScreenState createState() => ChangePasswordScreenState();
}

// ignore_for_file: must_be_immutable
class ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 9.v),
                    child: Column(children: [
                      _buildPasswordEditText(context),
                      SizedBox(height: 16.v),
                      _buildNewPasswordEditText(context),
                      SizedBox(height: 16.v),
                      _buildConfirmPasswordEditText(context),
                      SizedBox(height: 16.v),
                      _buildChangePasswordButton(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray400,
            margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_change_password".tr));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller:
              ref.watch(changePasswordNotifier).passwordEditTextController,
          hintText: "msg_current_password".tr,
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
  Widget _buildNewPasswordEditText(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller:
              ref.watch(changePasswordNotifier).newPasswordEditTextController,
          hintText: "lbl_new_password".tr,
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
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
          controller: ref
              .watch(changePasswordNotifier)
              .confirmPasswordEditTextController,
          hintText: "msg_repeat_new_password".tr,
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
  Widget _buildChangePasswordButton(BuildContext context) {
    return CustomElevatedButton(text: "lbl_change_password".tr);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
