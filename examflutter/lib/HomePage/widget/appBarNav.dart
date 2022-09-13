import 'package:flutter/material.dart';

class appBarNav extends StatelessWidget with PreferredSizeWidget {
  const appBarNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.all(20),
          onPressed: () {
            print("Ouverture Feature");
          },
          iconSize: 40,
          icon: Icon(
            Icons.align_horizontal_left_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.all(20),
              onPressed: () {
                print("Recherche");
              },
              iconSize: 40,
              icon: Icon(
                Icons.search_rounded,
                color: Colors.black,
              )),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight((kToolbarHeight));
}
