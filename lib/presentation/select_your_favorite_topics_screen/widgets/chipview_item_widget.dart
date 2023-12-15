import '../models/chipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(
    this.chipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  ChipviewItemModel chipviewItemModelObj;

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
        chipviewItemModelObj.categoryOne!,
        style: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (chipviewItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: appTheme.gray100,
      shape: (chipviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray500.withOpacity(0.6),
                width: 1.h,
              ),
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
