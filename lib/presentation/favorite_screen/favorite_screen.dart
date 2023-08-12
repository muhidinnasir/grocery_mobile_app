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
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 28, top: 15, right: 28, bottom: 15),
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
                          padding: getPadding(
                              left: 28, top: 12, right: 28, bottom: 12),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceholder113x93,
                                    height: getVerticalSize(113),
                                    width: getHorizontalSize(93),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(18))),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Banana",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900Medium_1),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFavorite,
                                                    height: getVerticalSize(18),
                                                    width:
                                                        getHorizontalSize(20),
                                                    margin: getMargin(
                                                        top: 2, bottom: 3))
                                              ]),
                                          Padding(
                                              padding: getPadding(top: 47),
                                              child: Row(children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 4, bottom: 3),
                                                    child: Text("28.8",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumMedium)),
                                                CustomElevatedButton(
                                                    text: "Add to cart",
                                                    margin: getMargin(left: 43),
                                                    buttonStyle: CustomButtonStyles
                                                        .fillGray200
                                                        .copyWith(
                                                            fixedSize: MaterialStateProperty
                                                                .all<Size>(Size(
                                                                    getHorizontalSize(
                                                                        113),
                                                                    getVerticalSize(
                                                                        35)))),
                                                    buttonTextStyle: theme
                                                        .textTheme.labelLarge!)
                                              ]))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 13),
                          padding: getPadding(left: 25, right: 25),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceholder113x93,
                                    height: getVerticalSize(113),
                                    width: getHorizontalSize(93),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(18)),
                                    margin: getMargin(top: 12, bottom: 12)),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 18, bottom: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Banana",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900Medium_1),
                                          Padding(
                                              padding: getPadding(top: 51),
                                              child: Text("28.8",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleMediumMedium))
                                        ])),
                                Expanded(
                                    child: Container(
                                        height: getVerticalSize(485),
                                        width: getHorizontalSize(116),
                                        margin: getMargin(left: 29),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFavorite,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(20),
                                                  alignment: Alignment.topRight,
                                                  margin: getMargin(
                                                      top: 81, right: 19)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: ListView.separated(
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    115));
                                                      },
                                                      itemCount: 4,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return FavoriteItemWidget();
                                                      }))
                                            ])))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 13),
                          padding: getPadding(top: 12, bottom: 12),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceholder113x93,
                                    height: getVerticalSize(113),
                                    width: getHorizontalSize(93),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(18))),
                                Padding(
                                    padding: getPadding(top: 6, bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Banana",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900Medium_1),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFavorite,
                                                    height: getVerticalSize(18),
                                                    width:
                                                        getHorizontalSize(20),
                                                    margin: getMargin(
                                                        top: 2, bottom: 3))
                                              ]),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgTrashbin1,
                                              height: getSize(28),
                                              width: getSize(28),
                                              alignment: Alignment.centerRight,
                                              margin: getMargin(
                                                  top: 10, right: 11)),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Row(children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 5, bottom: 2),
                                                    child: Text("28.8",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumMedium)),
                                                CustomElevatedButton(
                                                    text: "Add to cart",
                                                    margin: getMargin(left: 46),
                                                    buttonStyle: CustomButtonStyles
                                                        .fillGray200
                                                        .copyWith(
                                                            fixedSize: MaterialStateProperty
                                                                .all<Size>(Size(
                                                                    getHorizontalSize(
                                                                        113),
                                                                    getVerticalSize(
                                                                        35)))),
                                                    buttonTextStyle: theme
                                                        .textTheme.labelLarge!)
                                              ]))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 13, bottom: 5),
                          padding: getPadding(
                              left: 27, top: 12, right: 27, bottom: 12),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceholder113x93,
                                    height: getVerticalSize(113),
                                    width: getHorizontalSize(93),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(18)),
                                    margin: getMargin(left: 1)),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Banana",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900Medium_1),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFavorite,
                                                    height: getVerticalSize(18),
                                                    width:
                                                        getHorizontalSize(20),
                                                    margin: getMargin(
                                                        top: 2, bottom: 3))
                                              ]),
                                          Padding(
                                              padding: getPadding(top: 47),
                                              child: Row(children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 4, bottom: 3),
                                                    child: Text("28.8",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumMedium)),
                                                CustomElevatedButton(
                                                    text: "Add to cart",
                                                    margin: getMargin(left: 44),
                                                    buttonStyle: CustomButtonStyles
                                                        .fillGray200
                                                        .copyWith(
                                                            fixedSize: MaterialStateProperty
                                                                .all<Size>(Size(
                                                                    getHorizontalSize(
                                                                        113),
                                                                    getVerticalSize(
                                                                        35)))),
                                                    buttonTextStyle: theme
                                                        .textTheme.labelLarge!)
                                              ]))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
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
