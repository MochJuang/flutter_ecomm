// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_ecomm/constants/setup.dart';
import 'package:flutter_ecomm/presentation/splash/splash_page.dart';
import 'package:flutter_ecomm/presentation/theme.dart';
import 'package:flutter_ecomm/router/routes.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "MyEcommLaptop",
        getPages: Routes.getPages,
        theme: theme(),
        home: const SplashScreenPage());
  }
}
