import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/utilies/app_colors.dart';
import 'package:weather_app/featuers/home_page/presentation/controller/weather_states.dart';
import 'package:weather_app/featuers/home_page/presentation/view/widget/weather_widget.dart';
import '../../controller/weather_cubit.dart';
import 'no_weather_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherStates>(
      builder: (context, state) {
        if (state is LoadingWeatherState) {
          return  const Center(child: CircularProgressIndicator(color: AppColors.blue,));
        } else if (state is FailureWeatherState) {
          return Center(child: Text(state.errorMessage, style: const TextStyle(color: Colors.red)));
        } else if (state is SuccessWeatherState) {
          final weatherModel = context.read<WeatherCubit>().weatherModel;
          if (weatherModel == null) {
            return const NoWeatherWidget();
          }
          return  WeatherWidget(weatherModel: weatherModel);
        } else {
          // Display NoWeatherWidget if no weather data is available
          return const NoWeatherWidget();
        }
      },
    );
  }
}
