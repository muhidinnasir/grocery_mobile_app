import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

// ignore: must_be_immutable
class GridnameItemWidget extends StatefulWidget {
  const GridnameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<GridnameItemWidget> createState() => _GridnameItemWidgetState();
}

class _GridnameItemWidgetState extends State<GridnameItemWidget> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        200,
      ),
      width: getHorizontalSize(
        150,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: getPadding(
                left: 10,
                top: 7,
                right: 10,
                bottom: 7,
              ),
              decoration: AppDecoration.fill1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 142,
                    ),
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$6.7",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 2,
                          ),
                          child: Text(
                            "Add to cart",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: getVerticalSize(
                141,
              ),
              width: getHorizontalSize(
                150,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle246,
                    height: getVerticalSize(
                      141,
                    ),
                    width: getHorizontalSize(
                      150,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          18,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          18,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    svgPath: isAdded
                        ? ImageConstant.imgIcwishlist
                        : ImageConstant.imgIcwishlistGray400,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    alignment: Alignment.topLeft,
                    margin: getMargin(
                      left: 12,
                      top: 6,
                    ),
                    onTap: () {
                      setState(() {
                        isAdded = true;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
