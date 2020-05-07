// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _OpenWeatherApi implements OpenWeatherApi {
  _OpenWeatherApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://api.openweathermap.org/data/2.5';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getCurrentWeather(location, api_token) async {
    ArgumentError.checkNotNull(location, 'location');
    ArgumentError.checkNotNull(api_token, 'api_token');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'q': location,
      'appid': api_token
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/weather',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Weather.fromJson(_result.data);
    return Future.value(value);
  }
}
