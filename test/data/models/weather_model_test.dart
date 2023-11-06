// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/data/models/weather_model.dart';
import 'package:unit_testing/domain/entities/weather.dart';

import '../../helpers/json_reader.dart';

void main() {
  const testWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clear',
    description: 'clear sky',
    iconCode: '01n',
    temperature: 292.87, //01n, 292.87, 1012, 70
    pressure: 1012,
    humidity: 70,
  );
  test('should be a subclass of weather entity', () async {
    //assert
    expect(testWeatherModel, isA<WeatherEntity>());
  });

  test("should return a valid model from json", () async {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));

    //act
    final result = WeatherModel.fromJson(jsonMap);

    //assert
    expect(result, equals(testWeatherModel));
  });
}
