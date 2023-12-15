import '../select_your_favorite_topics_screen/widgets/chipview_item_widget.dart';
import 'models/chipview_item_model.dart';
import 'notifier/select_your_favorite_topics_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';

class SelectYourFavoriteTopicsScreen extends ConsumerStatefulWidget {
  const SelectYourFavoriteTopicsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectYourFavoriteTopicsScreenState createState() =>
      SelectYourFavoriteTopicsScreenState();
}

class SelectYourFavoriteTopicsScreenState
    extends ConsumerState<SelectYourFavoriteTopicsScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: Column(
            children: [
              Container(
                width: 327.h,
                margin: EdgeInsets.only(right: 8.h),
                child: Text(
                  "msg_select_some_of_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildChipView(context),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_next".tr,
              ),
              SizedBox(height: 5.v),
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
        text: "msg_select_your_favorite".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Wrap(
          runSpacing: 16.v,
          spacing: 16.h,
          children: List<Widget>.generate(
            ref
                    .watch(selectYourFavoriteTopicsNotifier)
                    .selectYourFavoriteTopicsModelObj
                    ?.chipviewItemList
                    .length ??
                0,
            (index) {
              ChipviewItemModel model = ref
                      .watch(selectYourFavoriteTopicsNotifier)
                      .selectYourFavoriteTopicsModelObj
                      ?.chipviewItemList[index] ??
                  ChipviewItemModel();

              return ChipviewItemWidget(
                model,
                onSelectedChipView1: (value) {
                  ref
                      .read(selectYourFavoriteTopicsNotifier.notifier)
                      .onSelectedChipView1(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }
}
