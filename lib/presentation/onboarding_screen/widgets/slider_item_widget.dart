import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.v,
      margin: EdgeInsets.fromLTRB(160.h, 376.v, 159.h, 139.v),
      child: AnimatedSmoothIndicator(
        activeIndex: 0,
        count: 3,
        effect: ScrollingDotsEffect(
          spacing: 8,
          activeDotColor: theme.colorScheme.primary,
          dotColor: appTheme.gray100,
          dotHeight: 8.v,
          dotWidth: 8.h,
        ),
      ),
    );
  }
}
