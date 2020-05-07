import 'package:json_annotation/json_annotation.dart';
import 'package:networking_example/models/main.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final Main main;
  final String name;

  Weather({this.main, this.name});

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
