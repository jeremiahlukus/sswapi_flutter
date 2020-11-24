import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  List rootList = List();

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      jsonDecode(response.body).forEach((k, v) {
        rootList.add({'name': k, 'results': v});
      });

      return rootList;
    } else {
      print(response.statusCode);
    }
  }
}
