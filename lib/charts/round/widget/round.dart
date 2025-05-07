// [RoundChart] pode ser utilizado para
// representar uma sequência em qualquer uma
// das seguintes modalidades : Skeet, Trap,
// Trap Olímpico e Compak

import 'package:bulletseed/charts/model/attempt.dart';
import 'package:bulletseed/charts/round/widget/round_chart_header.dart';
import 'package:bulletseed/charts/round/widget/round_overview.dart';
import 'package:flutter/material.dart';

part '../enum/weather_enum.dart';

class RoundChart extends StatelessWidget {
  final String id;
  final String uid;
  final DateTime datetime;
  final String title;
  final Weather weather;
  final bool isFarenheight;
  final double humidity;
  final double temperature;
  final double windVelocity;
  final String athlete;
  final String location;
  final String modality;
  final Color overviewHitColor;
  final Color overviewLostColor;
  final Color overviewSecondShotColor;
  final Color overviewSubtitleColor;
  final Color headerForegroundColor;
  final Color headerBackgroundColor;
  final List<Attempt> attempts;

  const RoundChart({
    super.key,
    required this.title,
    required this.weather,
    required this.temperature,
    required this.humidity,
    required this.windVelocity,
    required this.athlete,
    required this.location,
    required this.modality,
    required this.id,
    required this.uid,
    required this.datetime,
    required this.attempts,
    required this.isFarenheight,
    required this.overviewHitColor,
    required this.overviewLostColor,
    required this.overviewSecondShotColor,
    required this.overviewSubtitleColor,
    required this.headerForegroundColor,
    required this.headerBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        RoundChartHeader(
          modality: modality,
          foregroundColor: headerForegroundColor,
          backgroundColor: headerBackgroundColor,
          id: id,
          uid: uid,
          datetime: datetime,
          title: title,
          weather: weather,
          temperature: temperature,
          humidity: humidity,
          windVelocity: windVelocity,
          athlete: athlete,
          location: location,
          isFahrenheit: isFarenheight,
        ),
        RoundOverviewChart(
          attempts: attempts,
          hitColor: overviewHitColor,
          lostColor: overviewLostColor,
          secondShot: overviewSecondShotColor,
          subtitleColor: overviewSubtitleColor,
        )
      ],
    );
  }
}
