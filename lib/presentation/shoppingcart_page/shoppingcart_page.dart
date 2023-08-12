import '../shoppingcart_page/widgets/listplaceholder_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_title.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/custom_app_bar.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_elevated_button.dart';

class ShoppingcartPage extends StatelessWidget {
  const ShoppingcartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fill1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgHeader),
                                  fit: BoxFit.cover)),
                          child: CustomAppBar(
                              height: getVerticalSize(36),
                              title: AppbarTitle(
                                  text: "Item details",
                                  margin: getMargin(left: 42),
                                  onTap: () {
                                    onTapItemdetails(context);
                                  }))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 6),
                              child: Padding(
                                  padding: getPadding(bottom: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(12));
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return ListplaceholderItemWidget();
                                            }),
                                        Padding(
                                            padding: getPadding(top: 65),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("total",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack900Medium),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Text("6",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleMediumBlack900Medium))
                                                ])),
                                        CustomElevatedButton(
                                            text: "PLACE ORDER".toUpperCase(),
                                            margin: getMargin(
                                                left: 28, top: 11, right: 28),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL18
                                                .copyWith(
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all<Size>(Size(
                                                                double
                                                                    .maxFinite,
                                                                getVerticalSize(
                                                                    40)))),
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumBlack900)
                                      ]))))
                    ]))));
  }

  /// Navigates to the itemdetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the itemdetailsScreen.
  onTapItemdetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.itemdetailsScreen);
  }
}
