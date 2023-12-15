import '../homepage_page/widgets/slidercontent1_item_widget.dart';
import 'models/slidercontent1_item_model.dart';
import 'notifier/homepage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends ConsumerStatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
}

class HomepagePageState extends ConsumerState<HomepagePage>
    with AutomaticKeepAliveClientMixin<HomepagePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSliderContent1(context),
                        SizedBox(height: 49.v),
                        _buildASimpleTrickFor(context),
                        SizedBox(height: 16.v),
                        _buildArt(context),
                        SizedBox(height: 16.v),
                        _buildColors(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderContent1(BuildContext context) {
    return SizedBox(
      height: 256.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: ref
                    .watch(homepageNotifier)
                    .homepageModelObj
                    ?.slidercontent1ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Slidercontent1ItemModel model = ref
                      .watch(homepageNotifier)
                      .homepageModelObj
                      ?.slidercontent1ItemList[index] ??
                  Slidercontent1ItemModel();
              return Slidercontent1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedFor(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_recommended_for".tr,
                style: CustomTextStyles.titleLargeOnPrimaryContainer,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.v),
                child: Text(
                  "lbl_see_all".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(left: 112.h),
            child: Text(
              "lbl_ui_ux_design".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildASimpleTrickFor(BuildContext context) {
    return SizedBox(
      height: 142.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.bottomLeft,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 213.h,
              margin: EdgeInsets.only(
                right: 11.h,
                bottom: 9.v,
              ),
              child: Text(
                "msg_a_simple_trick_for".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    CustomTextStyles.titleMediumOnPrimaryContainer_1.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          _buildRecommendedFor(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArt(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle796x96,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 43.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_art3".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_six_steps_to_creating".tr,
                  style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColors(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle71,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 12.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_colors".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 223.h,
                  child: Text(
                    "msg_creating_color_palette".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer_1
                        .copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
