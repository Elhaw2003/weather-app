import 'package:flutter/material.dart';

import 'featuers/home_page/presentation/view/home_page_screen.dart';

main(){
  runApp(const WeatherApp());
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
