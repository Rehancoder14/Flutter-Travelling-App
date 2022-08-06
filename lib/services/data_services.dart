import 'dart:convert';

import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://mark.bslmeyu.com/api";
  getInfo() async {
    var apiUrl = "/getplaces";
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
