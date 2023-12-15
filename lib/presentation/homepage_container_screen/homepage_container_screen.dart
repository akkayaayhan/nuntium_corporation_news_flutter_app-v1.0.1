import 'notifier/homepage_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/bookmarks_page/bookmarks_page.dart';
import 'package:flutter_firebase_app/presentation/categories_page/categories_page.dart';
import 'package:flutter_firebase_app/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:flutter_firebase_app/presentation/profile_page/profile_page.dart';
import 'package:flutter_firebase_app/widgets/custom_bottom_bar.dart';

class HomepageContainerScreen extends ConsumerStatefulWidget {
  const HomepageContainerScreen({Key? key}) : super(key: key);

  @override
  HomepageContainerScreenState createState() => HomepageContainerScreenState();
}

// ignore_for_file: must_be_immutable
class HomepageContainerScreenState
    extends ConsumerState<HomepageContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homepageTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
