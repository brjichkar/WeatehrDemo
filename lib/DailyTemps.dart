import 'package:flutter/material.dart';
import 'package:weather_demo/HourlyTempData.dart';
import 'package:weather_icons/weather_icons.dart';

class DailyTemps extends StatefulWidget {
  const DailyTemps({Key? key}) : super(key: key);

  @override
  State<DailyTemps> createState() => _DailyTempsState();
}

class _DailyTempsState extends State<DailyTemps> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
          HourlyTempData.name('Fri, 8 PM',WeatherIcons.day_cloudy,'11'),
        ],
      ),
    );
  }
}
