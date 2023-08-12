import '../categories_page/widgets/gridgroup379_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_image.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_title.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/custom_app_bar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fill2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: getPadding(top: 9, bottom: 9),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgHeader),
                          fit: BoxFit.cover)),
                  child: CustomAppBar(
                      height: getVerticalSize(50),
                      leadingWidth: 52,
                      leading: AppbarImage(
                          height: getVerticalSize(22),
                          width: getHorizontalSize(24),
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 28, bottom: 17),
                          onTap: () {
                            onTapArrowleft(context);
                          }),
                      centerTitle: true,
                      title: AppbarTitle(text: "Categories"))),
              Expanded(
                child: Padding(
                  padding: getPadding(left: 36, top: 16, right: 36),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(139),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(23),
                        crossAxisSpacing: getHorizontalSize(23)),
                    physics: BouncingScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Gridgroup379ItemWidget();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
