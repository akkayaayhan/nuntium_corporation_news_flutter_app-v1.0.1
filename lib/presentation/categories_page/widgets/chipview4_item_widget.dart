import '../models/chipview4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/core/app_export.dart';

// ignore: must_be_immutable
class Chipview4ItemWidget extends StatelessWidget {
  Chipview4ItemWidget(
    this.chipview4ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Chipview4ItemModel chipview4ItemModelObj;

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
        chipview4ItemModelObj.categoryOne!,
        style: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (chipview4ItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onPrimary,
      selectedColor: theme.colorScheme.onPrimary,
      shape: (chipview4ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimary.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray100,
                width: 1.h,
              ),
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
