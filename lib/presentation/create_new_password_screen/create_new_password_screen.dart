import 'notifier/create_new_password_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/core/utils/validation_functions.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends ConsumerStatefulWidget {
  const CreateNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreateNewPasswordScreenState createState() => CreateNewPasswordScreenState();
}

class CreateNewPasswordScreenState
    extends ConsumerState<CreateNewPasswordScreen> {
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
                  width: 334.h,
                  child: Text(
                    "msg_you_can_create_a".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomTextFormField(
                      controller: ref
                          .watch(createNewPasswordNotifier)
                          .newpasswordController,
                      hintText: "lbl_new_password".tr,
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
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    );
                  },
                ),
                SizedBox(height: 16.v),
                Consumer(
                  builder: (context, ref, _) {
                    return CustomTextFormField(
                      controller: ref
                          .watch(createNewPasswordNotifier)
                          .newpasswordController1,
                      hintText: "msg_repeat_new_password".tr,
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
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    );
                  },
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  text: "lbl_confirm".tr,
                ),
                Spacer(),
                SizedBox(height: 46.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_didn_t_receive_an2".tr,
                        style: CustomTextStyles.titleMediumBluegray400Medium,
                      ),
                      TextSpan(
                        text: "lbl_send_again".tr,
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
        text: "msg_create_new_password".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }
}
