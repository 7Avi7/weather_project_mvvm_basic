import 'package:get_it/get_it.dart';

import 'core/services/weather_api.dart';
import 'core/view_models/base_view_model.dart';
import 'core/view_models/weather_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => BaseViewModel());
  locator.registerFactory(() => WeatherViewModel());
  locator.registerLazySingleton(() => WeatherApi());
}
