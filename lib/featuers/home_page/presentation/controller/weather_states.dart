abstract class WeatherStates{}
class InitialWeatherState extends WeatherStates{}
class LoadingWeatherState extends WeatherStates{}
class SuccessWeatherState extends WeatherStates{}
class FailureWeatherState extends WeatherStates{
  final String errorMessage;
  FailureWeatherState({required this.errorMessage});
}