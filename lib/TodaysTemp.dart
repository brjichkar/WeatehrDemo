import 'package:flutter/material.dart';
import 'package:weather_demo/DailyWeatherDetails.dart';
import 'package:weather_icons/weather_icons.dart';

class TodaysTemp extends StatefulWidget {
  final String dailyTemp;
  final String minTemp;
  final String maxTemp;

  TodaysTemp.name(this.dailyTemp, this.minTemp,this.maxTemp);

  @override
  State<TodaysTemp> createState() => _TodaysTempState.name(dailyTemp,minTemp,maxTemp);
}

class _TodaysTempState extends State<TodaysTemp> {
  final String dailysTemp;
  final String minsTemp;
  final String maxsTemp;

  _TodaysTempState.name(this.dailysTemp, this.minsTemp,this.maxsTemp);

  @override
  Widget build(BuildContext context) {
    String maxTemp;
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),child: Icon(WeatherIcons.day_cloudy,size: 40.0,),),
          Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text(dailysTemp,style: TextStyle(color: Colors.black,fontSize: 70.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),)
            ],
          ),),
          Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DailyWeatherDetails.name('Max',maxsTemp),
                const Padding(padding: EdgeInsets.all(5.0),child: VerticalDivider(color: Colors.grey,thickness: 2.0,),),
                DailyWeatherDetails.name('Min',minsTemp),
              ],
            ),
          ),),
        ],
      ),
    );
  }
}
