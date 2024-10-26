import 'package:flutter/material.dart';
import 'package:weather_app/core/utilies/app_colors.dart';
import 'package:weather_app/core/utilies/app_texts.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          onFieldSubmitted: (cityName){
            print(cityName);
          },
          decoration: InputDecoration(
            suffixIcon:  const Icon(
                Icons.search,
                size: 30,
                color: AppColors.black,
            ),
            labelText: AppTexts.search,
            labelStyle: const TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w400,
                fontSize: 16
            ),
            hintText: AppTexts.enterCityName,
            hintStyle: const TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 16
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.orange),
                borderRadius: BorderRadius.circular(3)
            )
          ),
        ),
      ),
    );
  }
}
