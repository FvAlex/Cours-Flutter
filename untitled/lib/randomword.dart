import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:untitled/favoritePage.dart';


class RandomWord extends StatefulWidget {
  const RandomWord({Key? key, required this.saved, required this.callback}) : super(key: key);
  final List<WordPair> saved;
  final Function callback;

  @override
  State<RandomWord> createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  List<WordPair> _pairs = [];
  TextStyle _biggerFont = const TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    final word = WordPair.random();
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemBuilder: /*1*/ (context, i) {
        if( i == 0){
          return ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoritePage(saved: widget.saved, callback: widget.callback,)),
            );
          }, child: Text("Favorite Page"));
        }
        if (i.isOdd) return const Divider();
        /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _pairs.length) {
          _pairs.addAll(generateWordPairs().take(10)); /*4*/
        }
        bool alreadySaved = widget.saved.contains(_pairs[index]);
        return ListTile(
          title: Text(_pairs[index].asPascalCase, style: _biggerFont),
          trailing: IconButton(onPressed: () {
            widget.callback(word: _pairs[index]);
          }, icon: alreadySaved ? Icon(Icons.favorite, color: Colors.red) :Icon(Icons.favorite_border, color: Colors.black),),
        );
      },
    );
  }
}


