import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/screens/film_detail_screen.dart';

class FilmsScreen extends StatefulWidget {
  FilmsScreen({this.filmData});

  final filmData;

  @override
  _FilmsScreenState createState() => _FilmsScreenState();
}

class _FilmsScreenState extends State<FilmsScreen> {
  /// Create our list of root Options
  Widget showList(BuildContext context) {
    print(widget.filmData[3]['url'][0]);
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>
          optionEntry(widget.filmData[3]['url'][index]),
      itemCount: widget.filmData[3]['url'].length,
    );
  }

  /// Create our list tile entry
  Widget optionEntry(item) {
    print(item);
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FilmDetailScreen(
            filmDetail: item,
          );
        }));
      },
      leading: Icon(Icons.assignment),
      title: Text(item['title']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: SizedBox(child: showList(context)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
