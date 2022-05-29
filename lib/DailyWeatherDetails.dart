import 'package:flutter/material.dart';
class DailyWeatherDetails extends StatelessWidget {
  final String title;
  final String values;

  DailyWeatherDetails.name(this.title, this.values);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(title,style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.bold),),
        SizedBox(height: 6.0,),
        Text(values,style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
