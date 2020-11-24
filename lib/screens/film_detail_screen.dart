import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmDetailScreen extends StatefulWidget {
  FilmDetailScreen({this.filmDetail});

  final filmDetail;

  @override
  _FilmDetailScreenState createState() => _FilmDetailScreenState();
}

class _FilmDetailScreenState extends State<FilmDetailScreen> {
  /// Create our list tile entry
  Widget detailColumn(item) {
    print(item);
    return Row(
      children: [
        Flexible(child: Text("${item.toString().toUpperCase()} : ")),
        Flexible(child: Text(widget.filmDetail[item])),
      ],
    );
  }

  /// Create our list tile entry
  Widget crawlColumn(item) {
    print(item);
    return Row(
      children: [
        Text("${item.toString().toUpperCase()} : "),
        Text(widget.filmDetail[item])
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              detailColumn('title'),
              detailColumn('director'),
              detailColumn('producer'),
              crawlColumn('opening_crawl'),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 50.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
