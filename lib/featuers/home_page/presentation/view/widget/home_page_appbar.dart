import 'package:flutter/material.dart';
import 'package:weather_app/core/utilies/app_texts.dart';

import '../../../../../core/utilies/app_colors.dart';

class HomePageAppbar extends StatelessWidget {
  const HomePageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.blue,
        title: const Text(
        AppTexts.weather,
        style: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
    ),
    ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: const Icon(
                size: 30,
                Icons.search,
               color: AppColors.white,
            )
        )
      ],
    );
  }
}
