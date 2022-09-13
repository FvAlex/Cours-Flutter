import 'package:flutter/material.dart';

class InfoMusic extends StatelessWidget {
  const InfoMusic({Key? key, required this.titre, required this.artiste, this.height = 55, this.titleSize = 28,  this.artisteSize = 14}) : super(key: key);
  final String titre;
  final String artiste;
  final double height;
  final double titleSize;
  final double artisteSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titre, style: TextStyle(color: Colors.white, fontWeight:FontWeight.w500, fontSize: titleSize),),
          Text(artiste, style: TextStyle(color: Colors.white, fontSize: artisteSize, fontWeight:FontWeight.w300),)
        ],
      ),
    );
  }
}
