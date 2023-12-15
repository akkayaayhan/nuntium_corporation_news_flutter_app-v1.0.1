import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgEstate41,
      activeIcon: ImageConstant.imgEstate41,
      type: BottomBarEnum.Estate41,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgApps11,
      activeIcon: ImageConstant.imgApps11,
      type: BottomBarEnum.Apps11,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmark21,
      activeIcon: ImageConstant.imgBookmark21,
      type: BottomBarEnum.Bookmark21,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser61,
      activeIcon: ImageConstant.imgUser61,
      type: BottomBarEnum.User61,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray200.withOpacity(0.32),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.blueGray200,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: theme.colorScheme.primary,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Estate41,
  Apps11,
  Bookmark21,
  User61,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
