import 'package:flutter/material.dart';
import 'package:weather_project_mvvm/core/enums/view_state.dart';
import 'package:weather_project_mvvm/core/view_models/weather_view_model.dart';
import 'package:weather_project_mvvm/ui/views/base_view.dart';

class WeatherData extends StatefulWidget {
  const WeatherData({super.key});

  @override
  State<WeatherData> createState() => _WeatherDataState();
}

class _WeatherDataState extends State<WeatherData> {
  @override
  Widget build(BuildContext context) {
    return BaseView<WeatherViewModel>(
      onModelReady: (model) async {
        await model.getCurrentWeather();
      },
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Center(
              child: model.state == ViewState.idle
                  ? ListView.builder(
                      // itemCount: model.temperature!.list!.length,
                      itemCount: 2,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Text(model.temperature!.list![index].main!.temp
                              .toString()),
                        ],
                      ),
                    )
                  : CircularProgressIndicator()),
        ),
      ),
    );
  }
}
