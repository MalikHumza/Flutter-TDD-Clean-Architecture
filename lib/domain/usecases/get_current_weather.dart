import 'package:dartz/dartz.dart';
import 'package:unit_testing/core/error/failure.dart';
import 'package:unit_testing/domain/entities/weather.dart';
import 'package:unit_testing/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository weatherRepository;
  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure, WeatherEntity>> execute(String cityname) {
    return weatherRepository.getCurrentWeather(cityname);
  }
}
