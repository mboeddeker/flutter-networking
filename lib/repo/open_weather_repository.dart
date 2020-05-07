import 'package:dio/dio.dart';
import 'package:networking_example/models/weather.dart';
import 'package:retrofit/retrofit.dart';

part 'open_weather_repository.g.dart';

@RestApi(baseUrl: 'http://api.openweathermap.org/data/2.5')
abstract class OpenWeatherApi {
  factory OpenWeatherApi(Dio dio, {String baseUrl}) = _OpenWeatherApi;

  @GET("/weather")
  Future<Weather> getCurrentWeather(
    @Query('q') String location,
    @Query('appid') String api_token,
  );
}

// http://api.openweathermap.org/data/2.5/weather?q=Paderborn&appid=9a2238483895fa0a188a05775415bf56
// flutter packages pub run build_runner build
