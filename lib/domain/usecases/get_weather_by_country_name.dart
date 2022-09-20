import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repository/base_weather_repository.dart';

class getWeatherByCountryName {
  final BaseWeatherRepository baseWeatherRepository;

  getWeatherByCountryName(this.baseWeatherRepository);

  Future<Weather> execute(String cityName) async {
    return await baseWeatherRepository.getWeatherByCountryName(cityName);
  }
}
