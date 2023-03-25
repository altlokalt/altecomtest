import 'controller/dashboard_containe_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/account_page/account_page.dart';
import 'package:altlokaltecom/presentation/cart_page/cart_page.dart';
import 'package:altlokaltecom/presentation/dashboard_page/dashboard_page.dart';
import 'package:altlokaltecom/presentation/explore_page/explore_page.dart';
import 'package:altlokaltecom/presentation/offer_screen_one_page/offer_screen_one_page.dart';
import 'package:altlokaltecom/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DashboardContaineScreen extends GetWidget<DashboardContaineController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashboardPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Explore:
        return AppRoutes.explorePage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Offer:
        return AppRoutes.offerScreenOnePage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.offerScreenOnePage:
        return OfferScreenOnePage();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
