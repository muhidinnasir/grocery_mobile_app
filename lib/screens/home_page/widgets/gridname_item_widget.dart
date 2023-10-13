import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/model/productModel.dart';

// ignore: must_be_immutable
class GridnameItemWidget extends StatefulWidget {
  final ProductMoel? productMoel;
  final int index;
  const GridnameItemWidget(
      {Key? key, required this.productMoel, required this.index})
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
        220,
      ),
      width: getHorizontalSize(
        180,
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
                      top: 112,
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
                          "\$${widget.productMoel!.data[widget.index].singleDeal.originalPrice}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Add to cart",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.red.shade700,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            )),
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
                    url:
                        "https://stagingchipchip.fra1.digitaloceanspaces.com/${widget.productMoel!.data[widget.index].primaryImage}",
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
