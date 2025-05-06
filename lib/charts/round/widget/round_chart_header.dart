import 'package:bulletseed/charts/round/widget/round.dart';
import 'package:flutter/material.dart';

class RoundChartHeader extends StatelessWidget {
  final String id;
  final String uid;
  final String athlete;
  final String location;
  final String modality;
  final String title;
  final double temperature;
  final double humidity;
  final double windVelocity;
  final Color foregroundColor;
  final Color backgroundColor;
  final bool isFahrenheit;
  final DateTime datetime;
  final Weather weather;

  const RoundChartHeader({
    super.key,
    required this.modality,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.id,
    required this.uid,
    required this.datetime,
    required this.title,
    required this.weather,
    required this.temperature,
    required this.humidity,
    required this.windVelocity,
    required this.athlete,
    required this.location,
    required this.isFahrenheit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        SizedBox(
          width: 450,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                modality.toUpperCase(),
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                spacing: 5,
                children: [
                  SizedBox(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          weather.icon,
                          size: 25,
                          color: Colors.blueGrey,
                        ),
                        Text(
                          getTemperature(),
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.blueGrey,
                      width: 10,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.water_drop_outlined,
                          size: 25,
                          color: Colors.blueGrey,
                        ),
                        Text(
                          "$humidity%",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.blueGrey,
                      width: 10,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.tornado_outlined,
                          size: 25,
                          color: Colors.blueGrey,
                        ),
                        Text(
                          "$windVelocity km/h",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 450,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Local: $location",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Série: $title",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Atleta: $athlete",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  String getDatetime() {
    return "${datetime.hour} ${datetime.timeZoneName}";
  }

  String getTemperature() {
    return isFahrenheit ? "$temperatureºF" : "$temperatureºC";
  }
}
