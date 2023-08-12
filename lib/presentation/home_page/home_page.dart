import '../home_page/widgets/gridname1_item_widget.dart';
import '../home_page/widgets/gridname_item_widget.dart';
import '../home_page/widgets/listrefresh_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_image.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_title.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: getVerticalSize(
              1032,
            ),
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPagebackground,
                  height: getVerticalSize(
                    1038,
                  ),
                  width: getHorizontalSize(
                    374,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          55,
                        ),
                        title: Padding(
                          padding: getPadding(
                            left: 28,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    right: 37,
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Good Morning",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyMediumGray700,
                                  ),
                                ),
                              ),
                              AppbarTitle(
                                text: "Rafatul Islam",
                                margin: getMargin(
                                  top: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          AppbarImage(
                            height: getVerticalSize(
                              24,
                            ),
                            width: getHorizontalSize(
                              26,
                            ),
                            svgPath: ImageConstant.imgNotification,
                            margin: getMargin(
                              left: 28,
                              top: 22,
                              right: 28,
                              bottom: 6,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: getVerticalSize(
                          959.08997,
                        ),
                        width: getHorizontalSize(
                          347,
                        ),
                        margin: getMargin(
                          top: 17,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Categories",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleMediumBlack900SemiBold,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30.0),
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getVerticalSize(
                                            14,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          margin: getMargin(
                                            top: 5,
                                            bottom: 7,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getVerticalSize(
                                      85,
                                    ),
                                    child: ListView.separated(
                                      padding: getPadding(
                                        top: 11,
                                      ),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (
                                        context,
                                        index,
                                      ) {
                                        return SizedBox(
                                          width: getHorizontalSize(
                                            10,
                                          ),
                                        );
                                      },
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return ListrefreshItemWidget();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                height: getVerticalSize(
                                  808,
                                ),
                                width: getHorizontalSize(
                                  321,
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      width: double.maxFinite,
                                      padding:
                                          EdgeInsets.only(top: 13, bottom: 13),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 13),
                                                child: Text(
                                                  "Latest Products",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900SemiBold,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: getPadding(
                                                  right: 1,
                                                ),
                                                child: GridView.builder(
                                                  shrinkWrap: true,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(
                                                      201,
                                                    ),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(
                                                      20,
                                                    ),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(
                                                      20,
                                                    ),
                                                  ),
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  itemCount: 8,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return GridnameItemWidget();
                                                  },
                                                ),
                                              ),
                                            ),
                                            // Padding(
                                            //   padding: getPadding(
                                            //     top: 16,
                                            //   ),
                                            //   child: GridView.builder(
                                            //     shrinkWrap: true,
                                            //     gridDelegate:
                                            //         SliverGridDelegateWithFixedCrossAxisCount(
                                            //       mainAxisExtent:
                                            //           getVerticalSize(
                                            //         201,
                                            //       ),
                                            //       crossAxisCount: 2,
                                            //       mainAxisSpacing:
                                            //           getHorizontalSize(
                                            //         21,
                                            //       ),
                                            //       crossAxisSpacing:
                                            //           getHorizontalSize(
                                            //         21,
                                            //       ),
                                            //     ),
                                            //     physics:
                                            //         NeverScrollableScrollPhysics(),
                                            //     itemCount: 4,
                                            //     itemBuilder: (context, index) {
                                            //       return Gridname1ItemWidget();
                                            //     },
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Align(
                                    //   alignment: Alignment.bottomRight,
                                    //   child: Container(
                                    //     height: getSize(
                                    //       23,
                                    //     ),
                                    //     width: getSize(
                                    //       23,
                                    //     ),
                                    //     margin: getMargin(
                                    //       right: 3,
                                    //       bottom: 29,
                                    //     ),
                                    //     child: Stack(
                                    //       alignment: Alignment.topLeft,
                                    //       children: [
                                    //         CustomImageView(
                                    //           svgPath: ImageConstant.imgUser,
                                    //           height: getSize(
                                    //             23,
                                    //           ),
                                    //           width: getSize(
                                    //             23,
                                    //           ),
                                    //           alignment: Alignment.center,
                                    //         ),
                                    //         CustomImageView(
                                    //           svgPath: ImageConstant.imgUser,
                                    //           height: getSize(
                                    //             22,
                                    //           ),
                                    //           width: getSize(
                                    //             22,
                                    //           ),
                                    //           alignment: Alignment.topLeft,
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
