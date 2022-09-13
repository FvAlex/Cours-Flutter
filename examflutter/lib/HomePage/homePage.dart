import 'package:examflutter/HomePage/widget/appBarNav.dart';
import 'package:examflutter/HomePage/widget/bodyHome.dart';
import 'package:examflutter/HomePage/widget/bodyHomeText.dart';
import 'package:examflutter/HomePage/widget/footerSlide.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarNav(),
          body: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                bodyHomeText(),
                Spacer(),
                bodyhome(),
                Spacer(),
                footerSlide()

          ]),
        );
  }
}
