import 'package:flutter/material.dart';

class appBarMusic extends StatelessWidget with PreferredSizeWidget{
  const appBarMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            print("Exit");
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Setting");
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              )),
        ],
      ),
      body: Center(
        child: Text("music"),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight((kToolbarHeight));
}
