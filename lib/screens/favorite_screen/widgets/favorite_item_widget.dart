import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  const FavoriteItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomElevatedButton(
        text: "Add to cart",
        buttonStyle: CustomButtonStyles.fillGray200.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(Size(
          getHorizontalSize(
            113,
          ),
          getVerticalSize(
            35,
          ),
        ))),
        buttonTextStyle: theme.textTheme.labelLarge!,
      ),
    );
  }
}
