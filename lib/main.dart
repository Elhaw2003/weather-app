import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/featuers/home_page/data/repos/weather_repo_implementation.dart';
import 'package:weather_app/featuers/home_page/presentation/controller/weather_cubit.dart';

import 'featuers/home_page/presentation/view/home_page_screen.dart';

main(){
  runApp(BlocProvider(
    create: (context) => WeatherCubit(weatherRepo: WeatherRepoImplementation()),
      child: const WeatherApp()));
}
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
    );
  }
}
