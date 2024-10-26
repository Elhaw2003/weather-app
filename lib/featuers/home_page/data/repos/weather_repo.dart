import 'package:dartz/dartz.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/featuers/home_page/data/models/weather_model.dart';

abstract class WeatherRepo{
  Future<Either< Failure,WeatherModel>> getWeather(
  {
   required String cityName
}
      );
}