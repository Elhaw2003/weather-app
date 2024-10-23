import 'package:flutter/material.dart';
import 'package:weather_app/core/utilies/app_colors.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/home_page_appbar.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/no_weather_widget.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/weather_widget.dart';
class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        flexibleSpace: const HomePageAppbar(),
    ),
      body: const WeatherWidget(),
    );
  }
}