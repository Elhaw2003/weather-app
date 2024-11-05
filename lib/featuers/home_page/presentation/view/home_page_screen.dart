import 'package:flutter/material.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/home_page_appbar.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/home_body.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.blue,
      appBar: AppBar(
        flexibleSpace: const HomePageAppbar(),
      ),
      body: const HomeBody(),
    );
  }
}