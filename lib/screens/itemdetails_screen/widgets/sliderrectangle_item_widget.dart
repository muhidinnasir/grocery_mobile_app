import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

// ignore: must_be_immutable
class SliderrectangleItemWidget extends StatelessWidget {
  const SliderrectangleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle244,
        height: getVerticalSize(
          230,
        ),
        width: getHorizontalSize(
          375,
        ),
      ),
    );
  }
}
