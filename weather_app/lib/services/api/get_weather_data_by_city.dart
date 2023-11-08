import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/models.dart';

Future<Weather> getWeatherData(String city) async {
  final url = Uri.parse(
      'http://api.weatherapi.com/v1/current.json?key=1655e996773249af82e181850230711&q=$city&aqi=no');
  final response = await http.get(url);
  final decodedResponse = jsonDecode(response.body);
  final weatherObject = Weather.fromJson(decodedResponse);
  // print(weatherObject.location.name);

  if (decodedResponse == null) {
    throw Exception('Failed to decode response');
  }
  return weatherObject;
}

getWeatherImage(int conditnCode) {
  switch (conditnCode) {
    case 1000:
      return 'lib/assets/images/snowing night.jpg';
    case 1003:
    case 1006:
      return 'lib/assets/images/snowing night.jpg';
    case 1009:
      return 'lib/assets/images/snowing night.jpg';
    case 1063:
    case 1180:
    case 1183:
    case 1186:
    case 1189:
    case 1192:
    case 1195:
    case 1198:
    case 1201:
    case 1204:
    case 1207:
    case 1210:
    case 1213:
    case 1216:
    case 1219:
    case 1222:
    case 1225:
    case 1237:
    case 1240:
    case 1243:
    case 1246:
      return 'lib/assets/images/snowing night.jpg';
    case 1066:
    case 1217:
    case 1228:
    case 1255:
    case 1258:
    case 1261:
    case 1264:
    case 1273:
    case 1276:
    case 1279:
    case 1282:
      return 'lib/assets/images/snowing night.jpg';
    case 1087:
    case 1270:
    case 1279:
      return 'lib/assets/images/snowing night.jpg';
    default:
      return 'lib/assets/images/snowing night.jpg';
  }
}