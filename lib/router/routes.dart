import 'package:flutter_ecomm/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_ecomm/presentation/splash/splash_page.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage>? getPages = [
    GetPage(
      name: SplashScreenPage.routeName,
      page: () => const SplashScreenPage(),
    ),
    GetPage(
      name: SignInPage.routeName,
      page: () => const SignInPage(),
    ),
  ];
}
