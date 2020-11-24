import '../services/networking.dart';

const String baseUrl = 'https://swapi.dev';

class SwapiModel {
  Future<dynamic> getFilmData() async {
    print("Calling swapi");
    NetworkHelper networkHelper = NetworkHelper('$baseUrl/api/films');
    var filmData = await networkHelper.getData();
    print("got  swapi data");
    return filmData;
  }
}
