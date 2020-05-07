import 'package:flutter/material.dart';
import 'package:networking_example/pages/home/home_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, viewModel, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Weather'),
          ),
          body: Column(
            children: [
              TextField(
                onChanged: (String value) =>
                    viewModel.debouncer.run(() => viewModel.getCurrentWeather(value)),
                controller: viewModel.provideTextController(),
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.black87),
                  hintText: 'Serach for a city',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              viewModel.isLoading
                  ? Container(child: Center(child: CircularProgressIndicator()))
                  : Container(
                      child: Center(
                        child: Text(
                          viewModel.isFullFilled
                              ? '${viewModel.provideCityName() ?? ''}: ${viewModel.currentWeahter.main.temp.toString()}'
                              : 'No Data here',
                        ),
                      ),
                    )
            ],
          ),
        );
      },
    );
  }
}
