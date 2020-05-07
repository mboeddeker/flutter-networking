import 'package:networking_example/models/weather.dart';
import 'package:networking_example/repo/open_weather_repository.dart';
import 'package:dio/dio.dart';

class HomePageRepository {
  Future<Weather> getWeather(String location) {
    return OpenWeatherApi(Dio()).getCurrentWeather(location, "9a2238483895fa0a188a05775415bf56");
  }
}
