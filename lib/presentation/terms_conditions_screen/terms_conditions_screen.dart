import 'notifier/terms_conditions_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';

class TermsConditionsScreen extends ConsumerStatefulWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  TermsConditionsScreenState createState() => TermsConditionsScreenState();
}

class TermsConditionsScreenState extends ConsumerState<TermsConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 9.v),
                    child: Container(
                        width: 333.h,
                        margin: EdgeInsets.only(left: 20.h, right: 21.h),
                        child: Text("msg_lorem_ipsum_dolor".tr,
                            maxLines: 29,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(height: 1.50)))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray400,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_terms_conditions".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
