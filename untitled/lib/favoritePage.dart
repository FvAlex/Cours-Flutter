import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key, required this.saved, required this.callback})
      : super(key: key);
  final List<WordPair> saved;
  final Function callback;

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  TextStyle _biggerFont = const TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Favorite Page"),
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new))),
        body: ListView.builder(
          itemCount: widget.saved.length,
          itemBuilder: (context, index) {
            WordPair word = widget.saved[index];
            return ListTile(
              title: Text(word.asPascalCase, style: _biggerFont),
              trailing: IconButton(
                  onPressed: () {
                    widget.callback(word: word);
                  },
                  icon: Icon(Icons.favorite, color: Colors.red)),
            );
          },
        ));
  }
}
