import 'package:flutter/material.dart';
import 'package:weather_app/core/utilies/app_colors.dart';
import 'package:weather_app/core/utilies/app_texts.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Text(
        AppTexts.noWeather,
        style: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
      ),
    );
  }
}
