import '../categories_page/widgets/chipview4_item_widget.dart';
import 'models/chipview4_item_model.dart';
import 'notifier/categories_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';
import 'package:flutter_firebase_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_firebase_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CategoriesPage extends ConsumerStatefulWidget {
  const CategoriesPage({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesPageState createState() => CategoriesPageState();
}

class CategoriesPageState extends ConsumerState<CategoriesPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_thousands_of_articles".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 32.v),
              _buildChipView(context),
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
        text: "lbl_categories".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Consumer(
        builder: (context, ref, _) {
          return Wrap(
            runSpacing: 16.v,
            spacing: 16.h,
            children: List<Widget>.generate(
              ref
                      .watch(categoriesNotifier)
                      .categoriesModelObj
                      ?.chipview4ItemList
                      .length ??
                  0,
              (index) {
                Chipview4ItemModel model = ref
                        .watch(categoriesNotifier)
                        .categoriesModelObj
                        ?.chipview4ItemList[index] ??
                    Chipview4ItemModel();

                return Chipview4ItemWidget(
                  model,
                  onSelectedChipView1: (value) {
                    ref
                        .read(categoriesNotifier.notifier)
                        .onSelectedChipView1(index, value);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
