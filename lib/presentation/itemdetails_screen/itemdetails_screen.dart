import '../itemdetails_screen/widgets/sliderrectangle_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ItemdetailsScreen extends StatelessWidget {
  ItemdetailsScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: getVerticalSize(776),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(230),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    sliderIndex = index;
                                  }),
                              itemCount: 1,
                              itemBuilder: (context, index, realIndex) {
                                return SliderrectangleItemWidget();
                              }),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: getPadding(
                                      left: 28, top: 17, right: 28, bottom: 17),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup25),
                                          fit: BoxFit.cover)),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftGray10001,
                                      height: getVerticalSize(22),
                                      width: getHorizontalSize(24),
                                      onTap: () {
                                        onTapImgArrowleft(context);
                                      }))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: getPadding(
                                      left: 16, top: 28, right: 16, bottom: 28),
                                  decoration: AppDecoration.outline1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: getVerticalSize(88),
                                            width: getHorizontalSize(331),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Opacity(
                                                                opacity: 0.9,
                                                                child: Text(
                                                                    "Fresh Orange",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: theme
                                                                        .textTheme
                                                                        .headlineSmall)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            13),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "4.9",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              CustomTextStyles.headlineSmallPrimary),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              113),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          padding: getPadding(
                                                                              left: 12,
                                                                              top: 2,
                                                                              right: 12,
                                                                              bottom: 2),
                                                                          decoration: AppDecoration.fill3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                            Container(
                                                                                height: getVerticalSize(3),
                                                                                width: getHorizontalSize(15),
                                                                                margin: getMargin(top: 13, bottom: 13),
                                                                                decoration: BoxDecoration(color: theme.colorScheme.primary)),
                                                                            Padding(
                                                                                padding: getPadding(left: 25),
                                                                                child: Text("3", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeMedium)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgGrid,
                                                                                height: getSize(15),
                                                                                width: getSize(15),
                                                                                margin: getMargin(left: 20, top: 7, bottom: 7))
                                                                          ]))
                                                                    ]))
                                                          ])),
                                                  CustomElevatedButton(
                                                      text: "Add to cart"
                                                          .toUpperCase(),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillPrimaryTL18
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      getHorizontalSize(
                                                                          125),
                                                                      getVerticalSize(
                                                                          37)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelMediumBlack900,
                                                      alignment:
                                                          Alignment.topRight)
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 12, top: 9),
                                                child: Text("Description",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900SemiBold))),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgTabindicator,
                                            height: getVerticalSize(2),
                                            width: getHorizontalSize(319),
                                            margin: getMargin(top: 8)),
                                        Container(
                                            width: getHorizontalSize(310),
                                            margin: getMargin(
                                                left: 12,
                                                top: 10,
                                                right: 20,
                                                bottom: 10),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam ",
                                                maxLines: 10,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: getVerticalSize(6),
                                  margin: getMargin(top: 195),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: sliderIndex,
                                      count: 1,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 5,
                                          activeDotColor: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1),
                                          dotColor: theme
                                              .colorScheme.onPrimaryContainer,
                                          dotHeight: getVerticalSize(6),
                                          dotWidth: getHorizontalSize(23)))))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
