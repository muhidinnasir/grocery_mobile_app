import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

// ignore: must_be_immutable
class Gridgroup379ItemWidget extends StatelessWidget {
  const Gridgroup379ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 33,
        top: 15,
        right: 33,
        bottom: 15,
      ),
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgGroup379,
            height: getSize(
              71,
            ),
            width: getSize(
              71,
            ),
            margin: getMargin(
              top: 7,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
