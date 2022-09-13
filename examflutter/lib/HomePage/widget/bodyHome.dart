import 'package:flutter/material.dart';

class bodyhome extends StatelessWidget {
  const bodyhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.black,
        child: Image.asset("assets/images/imageHome.jpg", height: 415),
      );
  }
}
