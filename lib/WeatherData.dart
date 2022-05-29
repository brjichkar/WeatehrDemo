import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:weather_demo/DailyDetails.dart';
import 'package:weather_demo/DailyTemps.dart';
import 'package:weather_demo/DailyWeatherDetails.dart';
import 'package:weather_demo/TodaysTemp.dart';
import 'package:weather_demo/api/api_service.dart';
import 'package:weather_demo/model/Responseweatherdata.dart';

class WeatherData extends StatefulWidget {
  const WeatherData({Key? key}) : super(key: key);

  @override
  State<WeatherData> createState() => _WeatherDataState();
}

class _WeatherDataState extends State<WeatherData> {

  Responseweatherdata? _responseweatherdata;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    _responseweatherdata = (await ApiService().getWeatherData())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _responseweatherdata== null ? const Center(
        child: CircularProgressIndicator(),
      ) : SafeArea(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10,50,10,0),
            child: Column(
            children: [
              Text(DateTimeFormat.format(DateTime.now(),format:AmericanDateFormats.dayOfWeek), style: const TextStyle(
      color: Colors.grey,
      fontSize: 14.0
    ),),
              Padding(
                padding: EdgeInsets.fromLTRB(10,40,10,10),
                child: Center(child: Text(_responseweatherdata!.name,style: TextStyle(color: Colors.black,fontSize: 26.0,fontWeight: FontWeight.bold,letterSpacing: 5.0),)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10,30,10,10),
                child: Center(child: Text(_responseweatherdata!.weather[0].description, style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight: FontWeight.bold,letterSpacing: 3.0),)),
              ),
              DailyDetails.name(_responseweatherdata!.main.temp.toString()+"\u0000",_responseweatherdata!.main.tempMin.toString()+'\u0000',_responseweatherdata!.main.tempMax.toString()+"\u0000"),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,10),
                child: DailyTemps(),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DailyWeatherDetails.name('Wind Speed',_responseweatherdata!.wind.speed.toString()+' m/s'),
                    const Padding(padding: EdgeInsets.all(5.0),child: VerticalDivider(color: Colors.grey,thickness: 2.0,),),
                    DailyWeatherDetails.name('Sunrise','5.54 AM'),
                    const Padding(padding: EdgeInsets.all(5.0),child: VerticalDivider(color: Colors.grey,thickness: 2.0,),),
                    DailyWeatherDetails.name('Sunset','6.37 PM'),
                    const Padding(padding: EdgeInsets.all(5.0),child: VerticalDivider(color: Colors.grey,thickness: 2.0,),),
                    DailyWeatherDetails.name('Humidity',_responseweatherdata!.main.humidity.toString()+'%'),
                  ],
                ),
              ),),
          ],
        ),
        ),
      ),
    );
  }


}
