import '../homepage_two_page/widgets/articlelist_item_widget.dart';
import 'models/articlelist_item_model.dart';
import 'notifier/homepage_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomepageTwoPage extends ConsumerStatefulWidget {
  const HomepageTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageTwoPageState createState() => HomepageTwoPageState();
}

class HomepageTwoPageState extends ConsumerState<HomepageTwoPage>
    with AutomaticKeepAliveClientMixin<HomepageTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildArticleList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArticleList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: ref
                    .watch(homepageTwoNotifier)
                    .homepageTwoModelObj
                    ?.articlelistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ArticlelistItemModel model = ref
                      .watch(homepageTwoNotifier)
                      .homepageTwoModelObj
                      ?.articlelistItemList[index] ??
                  ArticlelistItemModel();
              return ArticlelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
