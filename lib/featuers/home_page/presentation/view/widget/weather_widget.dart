import 'package:flutter/material.dart';
import 'package:weather_app/core/utilies/app_colors.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 170),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Alexandria",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
                color: AppColors.black
              ),
            ),
            Text(
              "updated at : 23:46",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 23,
                color: AppColors.black
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(Icons.ac_unit_rounded),
                  Spacer(),
                  Text(
                    "17",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: AppColors.black
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "maxTemp : 17",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.black
                        ),
                      ),
                      Text(
                        "minTemp : 10",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Text(
              "Light Rain",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: AppColors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}
