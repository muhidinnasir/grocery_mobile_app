import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeGray400,
      activeIcon: ImageConstant.imgHomeGray400,
      type: BottomBarEnum.Homegray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTransfer1,
      activeIcon: ImageConstant.imgTransfer1,
      type: BottomBarEnum.Transfer1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgQuestion,
      activeIcon: ImageConstant.imgQuestion,
      type: BottomBarEnum.Question,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcwishlistYellow900,
      activeIcon: ImageConstant.imgIcwishlistYellow900,
      type: BottomBarEnum.Icwishlistyellow900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameErrorcontainer,
      activeIcon: ImageConstant.imgFrameErrorcontainer,
      type: BottomBarEnum.Frameerrorcontainer,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              padding: getPadding(
                left: 26,
                top: 21,
                right: 26,
              ),
              decoration: AppDecoration.fill1,
              child: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  21,
                ),
                width: getSize(
                  21,
                ),
                color: appTheme.gray400,
                margin: getMargin(
                  top: 10,
                  bottom: 11,
                ),
              ),
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: getSize(
                21,
              ),
              width: getSize(
                21,
              ),
              margin: getMargin(
                top: 10,
                bottom: 11,
              ),
              color: Colors.orange,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homegray400,
  Transfer1,
  Question,
  Icwishlistyellow900,
  Frameerrorcontainer,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
