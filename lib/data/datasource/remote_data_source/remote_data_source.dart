import 'package:weather/core/utils/app_constant.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/domain/usecases/get_weather_by_country_name.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.base_url}/weather?q=$cityName&appid=${AppConstance.api_key}');
      print(response);
      return WeatherModel.fromJson(response.data());
    } catch (e) {
      print(e);
      return null;
    }
  }
}
