import 'package:flutter/material.dart';

class footerSlide extends StatelessWidget {
  const footerSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 350,
      width: 420,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(60.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(60.0),
            bottomLeft: Radius.circular(0.0)),
        ),
          child: Column(children: [
            Text("Texte 1"),
            Text("Texte 2"),
            Text("Texte 3"),
            Text("Texte 4")
          ]),
    ));
  }
}
