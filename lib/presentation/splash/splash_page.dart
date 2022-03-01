import 'package:flutter/material.dart';
import 'package:flutter_ecomm/constants/size_config.dart';

import 'components/body.dart';

class SplashScreenPage extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(body: BodySS());
  }
}
