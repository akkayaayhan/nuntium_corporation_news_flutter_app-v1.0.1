import '../language_screen/widgets/languageselector_item_widget.dart';
import 'models/languageselector_item_model.dart';
import 'notifier/language_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';

class LanguageScreen extends ConsumerStatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  LanguageScreenState createState() => LanguageScreenState();
}

class LanguageScreenState extends ConsumerState<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 19.h, top: 9.v, right: 19.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: ref
                              .watch(languageNotifier)
                              .languageModelObj
                              ?.languageselectorItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        LanguageselectorItemModel model = ref
                                .watch(languageNotifier)
                                .languageModelObj
                                ?.languageselectorItemList[index] ??
                            LanguageselectorItemModel();
                        return LanguageselectorItemWidget(model);
                      });
                }))));
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
        title: AppbarTitle(text: "lbl_language".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
