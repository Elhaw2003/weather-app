import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/featuers/home_page/data/models/weather_model.dart';
import 'package:weather_app/featuers/home_page/data/repos/weather_repo.dart';
import 'package:weather_app/featuers/home_page/presentation/controller/weather_states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit( { required this.weatherRepo}) : super(InitialWeatherState());

  final WeatherRepo weatherRepo;
 late  WeatherModel weatherModel;

  getWeatherFuncInCubit({required String cityName })async{
    emit(LoadingWeatherState());
    var result = await weatherRepo.getWeather(cityName: cityName);
   return result.fold(
            (l){
              emit(FailureWeatherState(errorMessage: l.message));
            },
        (r){
              weatherModel = r;
              emit(SuccessWeatherState());

        }
    );
  }


}
