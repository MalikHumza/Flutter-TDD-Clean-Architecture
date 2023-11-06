import 'package:unit_testing/domain/entities/weather.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel({
    required String cityName,
    required String main,
    required String description,
    required String iconCode,
    required int humidity,
    required int pressure,
    required double temperature,
  }) : super(
            cityName: cityName,
            main: main,
            description: description,
            humidity: humidity,
            iconCode: iconCode,
            pressure: pressure,
            temperature: temperature);

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        cityName: json['name'],
        main: json['weather'][0]['main'],
        description: json['weather'][0]['description'],
        iconCode: json['weather'][0]['icon'],
        temperature: json['main']['temp'],
        pressure: json['main']['pressure'],
        humidity: json['main']['humidity'],
      );

  Map<String, dynamic> toJson() => {
        'weather': [
          {
            'main': main,
            'description': description,
            'icon': iconCode,
          },
        ],
        'main': {
          'temp': temperature,
          'pressure': pressure,
          'humidity': humidity,
        },
        'name': cityName,
      };
}
