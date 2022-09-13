import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:untitled/randomword.dart';

void main() {
  runApp(MyNewApp());
}


class MyNewApp extends StatefulWidget {
  const MyNewApp({Key? key}) : super(key: key);

  @override
  State<MyNewApp> createState() => _MyNewAppState();
}

class _MyNewAppState extends State<MyNewApp> {
  List<WordPair> favorite = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: RandomWord(
          saved: favorite, callback: addFavorite,
        ),
      ),
    );  }

  void addFavorite({required WordPair word}){
    setState(() {
      if(!favorite.contains(word)){
        favorite.add(word);
      } else{
        favorite.remove(word);
      }
    });
    print(favorite.length);
  }

  void reduceFavorite({required WordPair word}){
    setState(() {
      if(!favorite.contains(word)){
        favorite.remove(word);
      } else{
        favorite.remove(word);
      }
    });
    print(favorite.length);
  }
}
