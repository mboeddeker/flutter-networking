import 'package:json_annotation/json_annotation.dart';
part 'main.g.dart';

@JsonSerializable()
class Main {
  final double temp;

  Main({this.temp});

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
