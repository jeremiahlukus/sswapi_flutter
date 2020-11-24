import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:swapi_flutter/screens/films_screen.dart';
import 'package:swapi_flutter/services/swapi.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  List rootList = List();
  @override
  void initState() {
    super.initState();
    getFilmData();
  }

  void getFilmData() async {
    var filmData = await SwapiModel().getFilmData();
    print("Calling map film data");
    print(filmData);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FilmsScreen(
        filmData: filmData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
