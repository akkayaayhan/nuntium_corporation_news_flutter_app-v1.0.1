import '../bookmarks_page/widgets/articlecontent_item_widget.dart';
import 'models/articlecontent_item_model.dart';
import 'notifier/bookmarks_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookmarksPage extends ConsumerStatefulWidget {
  const BookmarksPage({Key? key})
      : super(
          key: key,
        );

  @override
  BookmarksPageState createState() => BookmarksPageState();
}

class BookmarksPageState extends ConsumerState<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 29.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_bookmarks".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg_saved_articles_to".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 32.v),
                _buildArticleContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArticleContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
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
                height: 16.v,
              );
            },
            itemCount: ref
                    .watch(bookmarksNotifier)
                    .bookmarksModelObj
                    ?.articlecontentItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ArticlecontentItemModel model = ref
                      .watch(bookmarksNotifier)
                      .bookmarksModelObj
                      ?.articlecontentItemList[index] ??
                  ArticlecontentItemModel();
              return ArticlecontentItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
