import '../onboarding_screen/widgets/slider_item_widget.dart';
import 'models/slider_item_model.dart';
import 'notifier/onboarding_notifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/custom_elevated_button.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 50.v),
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildSlider(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 523.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              ref.watch(onboardingNotifier).sliderIndex = index;
            },
          ),
          itemCount: ref
                  .watch(onboardingNotifier)
                  .onboardingModelObj
                  ?.sliderItemList
                  .length ??
              0,
          itemBuilder: (context, index, realIndex) {
            SliderItemModel model = ref
                    .watch(onboardingNotifier)
                    .onboardingModelObj
                    ?.sliderItemList[index] ??
                SliderItemModel();
            return SliderItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 19.h,
        bottom: 50.v,
      ),
    );
  }
}
