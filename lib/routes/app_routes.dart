import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/presentation/onboardingzero_screen/onboardingzero_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/signin_screen/signin_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/home_container_screen/home_container_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/itemdetails_screen/itemdetails_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/favorite_screen/favorite_screen.dart';
import 'package:grocery_mobile_app_for_interview/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingzeroScreen = '/onboardingzero_screen';

  static const String signinScreen = '/signin_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String categoriesPage = '/categories_page';

  static const String itemdetailsScreen = '/itemdetails_screen';

  static const String shoppingcartPage = '/shoppingcart_page';

  static const String thankYouScreen = '/thank_you_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingzeroScreen: (context) => OnboardingzeroScreen(),
    signinScreen: (context) => SigninScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    itemdetailsScreen: (context) => ItemdetailsScreen(),
    thankYouScreen: (context) => ThankYouScreen(),
    favoriteScreen: (context) => FavoriteScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
