import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/presentation/categories_page/categories_page.dart';
import 'package:grocery_mobile_app_for_interview/presentation/home_page/home_page.dart';
import 'package:grocery_mobile_app_for_interview/presentation/itemdetails_screen/itemdetails_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/shoppingcart_page/shoppingcart_page.dart';
import 'package:grocery_mobile_app_for_interview/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homegray400:
        return AppRoutes.homePage;
      case BottomBarEnum.Transfer1:
        return AppRoutes.categoriesPage;
      case BottomBarEnum.Question:
        return AppRoutes.shoppingcartPage;
      case BottomBarEnum.Icwishlistyellow900:
        return AppRoutes.favoriteScreen;
      case BottomBarEnum.Frameerrorcontainer:
        return AppRoutes.thankYouScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.shoppingcartPage:
        return ShoppingcartPage();
      case AppRoutes.categoriesPage:
        return CategoriesPage();
      default:
        return HomePage();
    }
  }

  // Widget getCurrentPages(
  //   BuildContext context,
  //   String currentRoute,
  // ) {
  //   switch (currentRoute) {
  //     case AppRoutes.homePage:
  //       return HomePage();
  //     case AppRoutes.shoppingcartPage:
  //       return ShoppingcartPage();
  //     case AppRoutes.categoriesPage:
  //       return CategoriesPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
