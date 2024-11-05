import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/featuers/home_page/data/models/weather_model.dart';
import '../../../../../core/utilies/app_colors.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 170),
        child: Column(
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
                color: AppColors.black,
              ),
            ),
            Text(
              "Updated at: ${convertDate(weatherModel.updatedAt)}",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: weatherModel.image != null
                        ? "https:${weatherModel.image}"
                        : "https://cdn.weatherapi.com/weather/64x64/day/176.png",
                    // Default icon URL
                    width: 64,
                    height: 64,
                    placeholder: (context, url) =>
                    const CircularProgressIndicator(color: AppColors.blue),
                    errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
                  ),
                  const Spacer(),
                  Text(
                    "${weatherModel.temp}°C",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: AppColors.black,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Max: ${weatherModel.maxTemp}°C",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "Min: ${weatherModel.minTemp}°C",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String convertDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return '--:--';
    DateTime dateTime = DateTime.parse(dateString);
    return DateFormat('kk:mm').format(dateTime);
  }
}
