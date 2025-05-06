// [Weather] é um enum para representar os diferentes climas

part of '../widget/round.dart';

enum Weather {
  clear(Icons.wb_sunny_outlined),
  cloudy(Icons.wb_cloudy_outlined),
  overcast(Icons.wb_cloudy),
  fog(Icons.foggy),
  rain(Icons.umbrella_outlined),
  drizzle(Icons.grain),
  thunderstorm(Icons.thunderstorm),
  snow(Icons.ac_unit),
  hail(Icons.cloudy_snowing);

  final IconData icon;

  const Weather(this.icon);
}
