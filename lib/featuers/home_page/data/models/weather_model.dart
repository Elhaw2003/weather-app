class WeatherModel {
  final String cityName;
  final String updatedAt;
  final String image;
  final String maxTemp;
  final String minTemp;
  final String temp;
  final String weatherCondition;

  WeatherModel(
      {
        required this.cityName,
      required this.updatedAt,
      required this.image,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.weatherCondition
      });
}
