import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:micro_service_e_commerce/presentation/about/view/about_screen.dart';
import 'package:micro_service_e_commerce/presentation/add_ads/view/add_ads.dart';
import 'package:micro_service_e_commerce/presentation/blocked_user/view/blocked_user_screen.dart';
import 'package:micro_service_e_commerce/presentation/chat/view/all_chat_screen.dart';
import 'package:micro_service_e_commerce/presentation/country/country_screen.dart';
import 'package:micro_service_e_commerce/presentation/filters/view/filters_screen.dart';
import 'package:micro_service_e_commerce/presentation/layout/view/layout_screen.dart';
import 'package:micro_service_e_commerce/presentation/my_ads/view/my_ads_screen.dart';
import 'package:micro_service_e_commerce/presentation/notifications/view/notification_screen.dart';
import 'package:micro_service_e_commerce/presentation/onboarding/view/onBoarding_screen.dart';
import 'package:micro_service_e_commerce/presentation/paid_packages/view/paid_package_screen.dart';
import 'package:micro_service_e_commerce/presentation/promoted_ads/view/choose_category_promoted_screen.dart';
import 'package:micro_service_e_commerce/presentation/promoted_ads/view/promoted_ads_screen.dart';
import 'package:micro_service_e_commerce/presentation/search/view/search_screen.dart';
import 'package:micro_service_e_commerce/presentation/support_chat/view/chat_with_support_screen.dart';
import 'package:micro_service_e_commerce/presentation/support_chat/view/support_chat_screen.dart';
import 'package:micro_service_e_commerce/presentation/terms_and_conditions/view/terms_and_conditions_screen.dart';
import '../../presentation/splash/view/splash_screen.dart';
import '../../presentation/support_chat/view/messages_screen.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String layoutRoute = "/layoutRoute";
  static const String onBoardingRoute = "/onBoardingRoute";
  static const String searchRoute = "/searchRoute";
  static const String filterRoute = "/filterRoute";
  static const String addAdsRoute = "/addAdsRoute";
  static const String countryRoute = "/countryRoute";
  static const String myAdsRoute = "/myAdsRoute";
  static const String chatRoute = "/chatRoute";
  static const String blockedUsersRoute = "/blockedUsersRoute";
  static const String promotedAdsRoute = "promotedAdsRoute";
  static const String chooseCategoryPromotedRoute =
      "ChooseCategoryPromotedRoute";
  static const String paidPackagesRoute = "/paidPackagesRoute";
  static const String supportChatAndHelpCenterRoute =
      "/supportChatAndHelpCenterRoute";
  static const String chatWithSupportRoute = "/chatWithSupportRoute";
  static const String messagesRoute = "/messagesRoute";
  static const String notificationRoute = "/notificationRoute";
  static const String abouteRoute = "/abouteRoute";
  static const String termsAndConditionsRoute = "/termsAndConditionsRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.layoutRoute:
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScren(),
        );
      case Routes.searchRoute:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );
      case Routes.filterRoute:
        return MaterialPageRoute(
          builder: (_) => const FiltersScreen(),
        );
      case Routes.countryRoute:
        return MaterialPageRoute(
          builder: (_) => const CountryScreen(),
        );
      case Routes.addAdsRoute:
        return MaterialPageRoute(
          builder: (_) => AddAds(),
        );
      case Routes.myAdsRoute:
        return MaterialPageRoute(
          builder: (_) => const MyAdsScreen(),
        );
      case Routes.chatRoute:
        return MaterialPageRoute(
          builder: (_) => const AllChatScreen(),
        );
      case Routes.blockedUsersRoute:
        return MaterialPageRoute(
          builder: (_) => const BlockedUsersScreen(),
        );
      case Routes.promotedAdsRoute:
        return MaterialPageRoute(
          builder: (_) => const PromotedAdsScreen(),
        );
      case Routes.chooseCategoryPromotedRoute:
        return MaterialPageRoute(
          builder: (_) => const ChooseCategoryPromotedScreen(),
        );
      case Routes.paidPackagesRoute:
        return MaterialPageRoute(
          builder: (_) => const PaidPackagesScreen(),
        );
      case Routes.supportChatAndHelpCenterRoute:
        return MaterialPageRoute(
          builder: (_) => const SupportChatScreen(),
        );
      case Routes.chatWithSupportRoute:
        return MaterialPageRoute(
          builder: (_) => const ChatWithSupportScreen(),
        );
      case Routes.messagesRoute:
        return MaterialPageRoute(
          builder: (_) => const MessagesScreen(),
        );
      case Routes.notificationRoute:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.abouteRoute:
        return MaterialPageRoute(
          builder: (_) => const AboutScreen(),
        );
      case Routes.termsAndConditionsRoute:
        return MaterialPageRoute(
          builder: (_) => const TermsAndConditionsScreen(),
        );
      default:
        return unDefiendRoute();
    }
  }

  static Route<dynamic> unDefiendRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.notFound.tr()),
        ),
        body: Center(
          child: Text(
            AppStrings.notFound.tr(),
          ),
        ),
      ),
    );
  }
}
