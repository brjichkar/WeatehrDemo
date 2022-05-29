import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:weather_demo/api/ApiConstants.dart';
import 'package:weather_demo/model/Responseweatherdata.dart';

class ApiService {
  Future<Responseweatherdata?> getWeatherData() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        Responseweatherdata _model = responseweatherdataFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}