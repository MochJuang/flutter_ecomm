import 'package:flutter/material.dart';
import 'package:flutter_ecomm/constants/size_config.dart';
import 'package:flutter_ecomm/presentation/sign_in/components/body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(70)),
          child: const Text(
            "Sign In",
          ),
        ),
      ),
      body: const BodySI(),
    );
  }
}
