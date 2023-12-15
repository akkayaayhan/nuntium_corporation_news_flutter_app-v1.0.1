import 'notifier/bookmarks_empty_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/bookmarks_page/bookmarks_page.dart';
import 'package:flutter_firebase_app/presentation/categories_page/categories_page.dart';
import 'package:flutter_firebase_app/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:flutter_firebase_app/presentation/profile_page/profile_page.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_firebase_app/widgets/custom_icon_button.dart';

class BookmarksEmptyStateScreen extends ConsumerStatefulWidget {
  const BookmarksEmptyStateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BookmarksEmptyStateScreenState createState() =>
      BookmarksEmptyStateScreenState();
}

class BookmarksEmptyStateScreenState
    extends ConsumerState<BookmarksEmptyStateScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_saved_articles_to".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Spacer(
                flex: 45,
              ),
              CustomIconButton(
                height: 72.adaptSize,
                width: 72.adaptSize,
                padding: EdgeInsets.all(24.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgBookAlt11,
                ),
              ),
              SizedBox(height: 25.v),
              SizedBox(
                width: 233.h,
                child: Text(
                  "msg_you_haven_t_saved".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumOnPrimaryContainerMedium
                      .copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Spacer(
                flex: 54,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_bookmarks".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Estate41:
        return AppRoutes.homepageTabContainerPage;
      case BottomBarEnum.Apps11:
        return AppRoutes.categoriesPage;
      case BottomBarEnum.Bookmark21:
        return AppRoutes.bookmarksPage;
      case BottomBarEnum.User61:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepageTabContainerPage:
        return HomepageTabContainerPage();
      case AppRoutes.categoriesPage:
        return CategoriesPage();
      case AppRoutes.bookmarksPage:
        return BookmarksPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
