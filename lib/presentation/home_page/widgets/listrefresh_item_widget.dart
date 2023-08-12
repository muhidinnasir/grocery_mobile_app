import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

// ignore: must_be_immutable
class ListrefreshItemWidget extends StatelessWidget {
  const ListrefreshItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        93,
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: getMargin(
          top: 1,
        ),
        color: appTheme.gray5001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Container(
          height: getVerticalSize(
            73,
          ),
          width: getHorizontalSize(
            93,
          ),
          padding: getPadding(
            left: 26,
            top: 16,
            right: 26,
            bottom: 16,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Stack(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgRefresh,
                height: getSize(
                  40,
                ),
                width: getSize(
                  40,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
