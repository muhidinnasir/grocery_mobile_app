import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

class OnboardingzeroScreen extends StatefulWidget {
  const OnboardingzeroScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<OnboardingzeroScreen> createState() => _OnboardingzeroScreenState();
}

class _OnboardingzeroScreenState extends State<OnboardingzeroScreen> {
  navigate() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushNamedAndRemoveUntil(
          context, (AppRoutes.signinScreen), (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup441,
                height: getVerticalSize(
                  197,
                ),
                width: getHorizontalSize(
                  131,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 28,
                ),
                child: Text(
                  "Fresh Fruits",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
