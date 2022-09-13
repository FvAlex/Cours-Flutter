import 'package:flutter/material.dart';

class bodyHomeText extends StatelessWidget {
  const bodyHomeText ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text("Learn online in this pandemic situation!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),

    );
  }
}
