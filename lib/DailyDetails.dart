import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:weather_demo/TodaysTemp.dart';


class DailyDetails extends StatelessWidget {
  final String dailyTemp;
  final String minTemp;
  final String maxTemp;

  DailyDetails.name(this.dailyTemp, this.minTemp,this.maxTemp);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Container(
      height: MediaQuery.of(context).size.height*0.32,
      child: PageView(
        controller: controller,
        children: [
          TodaysTemp.name(dailyTemp,minTemp,maxTemp),
          TodaysTemp.name(dailyTemp,minTemp,maxTemp),
        ],
      ),
    );
  }
}
