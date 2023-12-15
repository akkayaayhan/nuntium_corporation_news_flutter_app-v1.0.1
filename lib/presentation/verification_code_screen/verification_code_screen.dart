import 'notifier/verification_code_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';
import 'package:flutter_firebase_app/widgets/custom_pin_code_text_field.dart';

class VerificationCodeScreen extends ConsumerStatefulWidget {
  const VerificationCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VerificationCodeScreenState createState() => VerificationCodeScreenState();
}

class VerificationCodeScreenState
    extends ConsumerState<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 317.h,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    right: 18.h,
                  ),
                  child: Text(
                    "msg_you_need_to_enter".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Consumer(
                  builder: (context, ref, _) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller:
                          ref.watch(verificationCodeNotifier).otpController,
                      onChanged: (value) {
                        ref
                            .watch(verificationCodeNotifier)
                            .otpController
                            ?.text = value;
                      },
                    );
                  },
                ),
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
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_verification_code".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }
}
