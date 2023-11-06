import 'package:dartz/dartz.dart';
import 'package:unit_testing/core/error/failure.dart';
import 'package:unit_testing/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityname);
}
