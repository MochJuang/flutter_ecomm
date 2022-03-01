import 'package:flutter/material.dart';
import 'package:flutter_ecomm/constants/setup.dart';
import 'package:flutter_ecomm/constants/size_config.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  dynamic press;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
        ),
      ),
    );
  }
}
