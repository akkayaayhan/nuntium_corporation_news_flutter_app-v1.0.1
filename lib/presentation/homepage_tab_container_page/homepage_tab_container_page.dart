import 'notifier/homepage_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/homepage_two_page/homepage_two_page.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepageTabContainerPage extends ConsumerStatefulWidget {
  const HomepageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageTabContainerPageState createState() =>
      HomepageTabContainerPageState();
}

class HomepageTabContainerPageState
    extends ConsumerState<HomepageTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_discover_things".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 32.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 19.h,
                    ),
                    child: Consumer(
                      builder: (context, ref, _) {
                        return CustomSearchView(
                          controller: ref
                              .watch(homepageTabContainerNotifier)
                              .searchController,
                          hintText: "lbl_search".tr,
                          alignment: Alignment.center,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                _buildTabview(context),
                SizedBox(
                  height: 435.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomepageTwoPage(),
                      HomepageTwoPage(),
                      HomepageTwoPage(),
                      HomepageTwoPage(),
                      HomepageTwoPage(),
                    ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_browse".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 32.v,
      width: 355.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onPrimary,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray400,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            16.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_random".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sports2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_gaming2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_politics3".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_history2".tr,
            ),
          ),
        ],
      ),
    );
  }
}
