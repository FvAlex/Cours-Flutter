import 'package:flutter/material.dart';

class imageMusic extends StatelessWidget {
  const imageMusic({Key? key, required this.asset_path}) : super(key: key);
  final String asset_path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.8,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.5,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(asset_path)),
      ),
    );
  }
}
