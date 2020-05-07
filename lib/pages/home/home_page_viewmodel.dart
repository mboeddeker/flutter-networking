import 'package:flutter/material.dart';
import 'package:networking_example/models/weather.dart';
import 'package:networking_example/utils/debouncer.dart';
import './home_repo.dart';

class HomePageViewModel extends ChangeNotifier {
  Weather currentWeahter;
  bool isLoading = false;
  bool isFullFilled = false;

  final _debouncer = Debouncer(milliSeconds: 500);
  final TextEditingController _textController = TextEditingController();

  void getCurrentWeather(String location) async {
    isLoading = true;
    notifyListeners();

    HomePageRepository().getWeather(location).then((val) {
      currentWeahter = val;
      isLoading = false;
      isFullFilled = true;
      notifyListeners();
    }).catchError((err) {
      isLoading = false;
      isFullFilled = currentWeahter != null;
      notifyListeners();
    });
  }

  TextEditingController provideTextController() => _textController;

  String provideCityName() => currentWeahter.name ?? '';

  Debouncer get debouncer => _debouncer;
}
