import 'package:flutter/material.dart';
import 'package:spotifyappflutter/screen/musicPage/widgets/InfoMusic.dart';
import 'package:spotifyappflutter/screen/musicPage/widgets/appBarMusic.dart';
import 'package:spotifyappflutter/screen/musicPage/widgets/bottomBarMusique.dart';
import 'package:spotifyappflutter/screen/musicPage/widgets/imageMusicdart.dart';
import 'package:spotifyappflutter/screen/musicPage/widgets/sliderMusic.dart';
import 'package:spotifyappflutter/service/constantData.dart';

import '../../modal/Song.dart';

class musicPage extends StatefulWidget {
  const musicPage({Key? key}) : super(key: key);

  @override
  State<musicPage> createState() => _musicPageState();
}

class _musicPageState extends State<musicPage> {
  double _currentTime = 0;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Song currentAlbum = album_test.songs[_index];
    return Scaffold(
      appBar: const appBarMusic(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(),
              InfoMusic(
                  titre: album_test.name,
                  artiste: "${_index + 1} of ${album_test.songs.length}"),
              imageMusic(asset_path: album_test.asset_url),
              InfoMusic(
                  titre: currentAlbum.name, artiste: currentAlbum.artiste),
              Spacer(),
              sliderMusic(currentTime: _currentTime, callback: changeTimevalue, timer: (currentAlbum.time).toDouble(),),
              bottomBarMusic(
                callback: changeMusic,
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeMusic(bool isNext) {
    setState(() {
      if (isNext) {
        if (_index + 1 == album_test.songs.length) {
          _index = 0;
        } else {
          _index++;
        }
      } else {
        if (_index - 1 < 0) {
          _index = album_test.songs.length - 1;
        } else {
          _index--;
        }
      }
      _currentTime = 00.00;
    });
  }

  void changeTimevalue(double value) {
    setState(() {
      _currentTime = value;
    });
  }
}
