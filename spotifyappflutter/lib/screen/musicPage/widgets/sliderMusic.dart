import 'package:flutter/material.dart';

class sliderMusic extends StatelessWidget {
  const sliderMusic(
      {Key? key,
      required this.currentTime,
      required this.callback,
      required this.timer})
      : super(key: key);
  final double currentTime;
  final Function callback;
  final double timer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Slider(
            max: timer,
            value: currentTime,
            onChanged: (value) {
              callback(value);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(timerModal(currentTime),
                  style: TextStyle(color: Colors.white)),
              Text(timerModal(timer), style: TextStyle(color: Colors.white))
            ],
          )
        ],
      ),
    );
  }

  String timerModal(double time) {
    int seconde = (time % 60).floor();
    int minute = (time / 60).floor();
    //String formatMinute = (minute == 0) ? "0$minute" : "0$minute";
    String formatSeconde = (seconde < 10) ? "0$seconde" : "$seconde";

    return "0$minute:$formatSeconde";
    if (seconde < 10) {
      return "$minute:0$seconde";
    } else {
      return "$minute:$seconde";
    }
  }
}
