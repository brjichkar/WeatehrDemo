import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class HourlyTempData extends StatelessWidget {
  final String title;
  final String values;
  final IconData image;
  HourlyTempData.name(this.title, this.image, this.values);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        child: Center(child: Column(
          children: [
            Text(title,style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 6.0,),
            Icon(image,size: 20.0,),
            SizedBox(height: 6.0,),
            Text(values,style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold),),
          ],
        ),),
    );
  }
}
