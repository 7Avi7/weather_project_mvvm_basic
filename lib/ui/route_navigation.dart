import 'package:flutter/material.dart';
import 'package:weather_project_mvvm/ui/views/weather_view.dart';

class RouteNavigation {
  static const String signIn = 'signIn';
  static const String weatherData = 'weatherData';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case weatherData:
        return MaterialPageRoute(builder: (context) => WeatherData());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
