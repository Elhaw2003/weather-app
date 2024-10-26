import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/core/utilies/end_points.dart';
import 'package:weather_app/featuers/home_page/data/models/weather_model.dart';
import 'package:weather_app/featuers/home_page/data/repos/weather_repo.dart';
import 'package:http/http.dart' as http;

import '../../../../core/utilies/app_texts.dart';

class WeatherRepoImplementation implements WeatherRepo {
  @override
  Future<Either<Failure, WeatherModel>> getWeather(
      {required String cityName}) async {
    try {
      var responce = await http.get(Uri.parse(
          "${EndPoints.baseUrl}${EndPoints.searchForCity}?key=${EndPoints.apiKey}&q=$cityName"));
      var body = jsonDecode(responce.body);
      if (responce.statusCode == 200) {
        return right(WeatherModel(
            cityName: body["location"]["name"],
            updatedAt: body["current"]["last_updated"],
            temp: body["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
            maxTemp: body["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
            minTemp: body["forecast"]["forecastday"][0]["day"]["mintemp_c"],
            image: body["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
            weatherCondition: body["forecast"]["forecastday"][0]["day"]["condition"]["text"]));
      }else{
        return left(
          ApiFailure(message: body["error"]["message"])
        );
      }
    }on SocketException {
      return left(NoInternetApi(message: AppTexts.noInterNet));
    }catch (e) {
      return left(ApiFailure(message: AppTexts.error));
    }
  }
}
