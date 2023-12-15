import '../models/chipview2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class Chipview2ItemWidget extends StatelessWidget {
  Chipview2ItemWidget(
    this.chipview2ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Chipview2ItemModel chipview2ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 26.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipview2ItemModelObj.categoryOne!,
        style: TextStyle(
          color: (chipview2ItemModelObj.isSelected ?? false)
              ? theme.colorScheme.onPrimary
              : appTheme.blueGray500,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (chipview2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      shape: (chipview2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
