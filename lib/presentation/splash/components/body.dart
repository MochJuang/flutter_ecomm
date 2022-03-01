import 'package:flutter/material.dart';
import 'package:flutter_ecomm/constants/setup.dart';
import 'package:flutter_ecomm/constants/size_config.dart';
import 'package:flutter_ecomm/helpers/widget/button.dart';
import 'package:flutter_ecomm/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_ecomm/presentation/splash/components/splash_content.dart';
import 'package:get/get.dart';

class BodySS extends StatefulWidget {
  const BodySS({
    Key? key,
  }) : super(key: key);

  @override
  State<BodySS> createState() => _BodySSState();
}

class _BodySSState extends State<BodySS> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemCount: splashData.length,
              onPageChanged: (i) {
                setState(() {
                  currentPage = i;
                });
              },
              itemBuilder: (ctx, i) => SplashContent(
                image: splashData[i]['image'] ?? '',
                text: splashData[i]['text'] ?? '',
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length,
                  (index) => buildDot(index),
                ),
              ),
              const Spacer(flex: 2),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  child: DefaultButton(
                    text: "Continue",
                    press: () {
                      Get.toNamed(SignInPage.routeName);
                    },
                  ),
                ),
              ),
              const Spacer()
            ]),
          ),
        ]),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: index == currentPage ? 20 : 6,
      height: 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: index == currentPage ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
