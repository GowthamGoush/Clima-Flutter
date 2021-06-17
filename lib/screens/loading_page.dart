import 'package:clima_flutter_app/services/location.dart';
import 'package:clima_flutter_app/services/network_helper.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();

    double Lat = location.latitude;
    double Long = location.longitude;

    print("Lat:$Lat, Long:$Long");

    NetworkHelper networkHelper = NetworkHelper(
        'api.openweathermap.org/data/2.5/find?lat=55.5&lon=37.5&cnt=10&appid={API key}');

    var data = await networkHelper.getData();

    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
