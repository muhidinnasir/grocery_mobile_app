import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_title.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/custom_app_bar.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_elevated_button.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgHeader,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomAppBar(
                  height: getVerticalSize(
                    35,
                  ),
                  centerTitle: true,
                  title: AppbarTitle(
                    text: "Thank You",
                  ),
                ),
              ),
              Container(
                padding: getPadding(
                  left: 27,
                  right: 27,
                  bottom: 95,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGroupBlack900,
                      height: getVerticalSize(
                        189,
                      ),
                      width: getHorizontalSize(
                        319,
                      ),
                      margin: getMargin(
                        top: 53,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 47,
                      ),
                      child: Text(
                        "Your Order in process",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        282,
                      ),
                      margin: getMargin(
                        left: 19,
                        top: 10,
                        right: 18,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            bottom: 60,
          ),
          decoration: AppDecoration.fill1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: appTheme.gray10001,
              ),
              CustomElevatedButton(
                text: "go back home".toUpperCase(),
                margin: getMargin(
                  left: 28,
                  top: 10,
                  right: 28,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    60,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleMediumBlack900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
