import 'package:weather/data/datasource/remote_data_source/remote_data_source.dart';
import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCountryName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(cityName))!;
  }
}
