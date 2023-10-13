import '../favorite_screen/widgets/favorite_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_bottom_bar.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                  width: double.maxFinite,
                  padding: getPadding(left: 28, top: 15, right: 28, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgHeader),
                          fit: BoxFit.cover)),
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtFavorites(context);
                      },
                      child: Padding(
                          padding: getPadding(bottom: 8),
                          child: Text("Favorite's",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge)))),
              Container(
                width: double.maxFinite,
                margin: getMargin(top: 6),
                padding: getPadding(left: 28, top: 12, right: 28, bottom: 12),
                decoration: AppDecoration.fill1
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPlaceholder113x93,
                        height: getVerticalSize(113),
                        width: getHorizontalSize(93),
                        radius: BorderRadius.circular(getHorizontalSize(18))),
                    Padding(
                      padding: getPadding(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    getPadding(top: 4, bottom: 3, right: 65),
                                child: Text("Banana",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .titleMediumBlack900Medium_1),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                                height: getVerticalSize(18),
                                width: getHorizontalSize(20),
                                margin: getMargin(left: 30),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(top: 47),
                            child: Row(
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 3),
                                    child: Text("28.8",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleMediumMedium)),
                                CustomElevatedButton(
                                    text: "Add to cart",
                                    margin: getMargin(left: 43),
                                    buttonStyle: CustomButtonStyles.fillGray200
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(113),
                                                        getVerticalSize(35)))),
                                    buttonTextStyle:
                                        theme.textTheme.labelLarge!)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the itemdetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the itemdetailsScreen.
  onTapTxtFavorites(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.itemdetailsScreen);
  }
}
