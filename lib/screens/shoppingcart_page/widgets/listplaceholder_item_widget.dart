import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

// ignore: must_be_immutable
class ListplaceholderItemWidget extends StatelessWidget {
  const ListplaceholderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 28,
        top: 12,
        right: 28,
        bottom: 12,
      ),
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlaceholder113x93,
            height: getVerticalSize(
              113,
            ),
            width: getHorizontalSize(
              93,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                18,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FRUITS",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                Text(
                  "Banana",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumBlack900Medium_1,
                ),
                Padding(
                  padding: getPadding(
                    top: 31,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                          bottom: 3,
                        ),
                        child: Text(
                          "\$3",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumMedium,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          113,
                        ),
                        margin: getMargin(
                          left: 43,
                        ),
                        padding: getPadding(
                          left: 12,
                          top: 2,
                          right: 12,
                          bottom: 2,
                        ),
                        decoration: AppDecoration.fill3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: getVerticalSize(
                                3,
                              ),
                              width: getHorizontalSize(
                                15,
                              ),
                              margin: getMargin(
                                top: 13,
                                bottom: 13,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.gray400,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 25,
                              ),
                              child: Text(
                                "6",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleLargeMedium,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgGridGray400,
                              height: getSize(
                                15,
                              ),
                              width: getSize(
                                15,
                              ),
                              margin: getMargin(
                                left: 20,
                                top: 7,
                                bottom: 7,
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
        ],
      ),
    );
  }
}
