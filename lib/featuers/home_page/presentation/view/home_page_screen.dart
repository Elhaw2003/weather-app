import 'package:flutter/material.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/home_page_appbar.dart';
class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const HomePageAppbar(),
    )
    );
  }
}