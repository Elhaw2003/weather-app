import 'package:flutter/material.dart';
import 'package:weather_app/core/utilies/app_texts.dart';

import '../../../../../core/utilies/app_colors.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.orange,
      title: const Text(
          AppTexts.searchACity,
        style: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    );
  }
}
