import 'package:bulletseed/charts/round/model/attempt.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundOverviewChart extends StatelessWidget {
  final Color hitColor;
  final Color lostColor;
  final Color secondShot;
  final Color subtitleColor;
  final List<Attempt> attempts;

  const RoundOverviewChart({
    super.key,
    required this.attempts,
    required this.hitColor,
    required this.lostColor,
    required this.secondShot,
    required this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 100,
      child: BarChart(
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        BarChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  getTitlesWidget: bottomTitleWidgets, showTitles: true),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                  getTitlesWidget: topTitleWidgets, showTitles: true),
            ),
            leftTitles: AxisTitles(axisNameSize: 0),
            rightTitles: AxisTitles(axisNameSize: 0),
          ),
          borderData: FlBorderData(show: false),
          barGroups: List.generate(
            attempts.length,
            (index) {
              return BarChartGroupData(
                groupVertically: true,
                x: index + 1,
                barRods: [
                  BarChartRodData(
                      width: 14,
                      color: attempts[index].hit ? hitColor : lostColor,
                      borderRadius: BorderRadius.all(
                        Radius.zero,
                      ),
                      toY: 1,
                      rodStackItems: [
                        BarChartRodStackItem(
                          .7,
                          1,
                          attempts[index].secondCartBridge
                              ? secondShot
                              : Colors.transparent,
                        )
                      ]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget topTitleWidgets(double value, TitleMeta meta) {
    final int intValue = value.toInt();

    Widget icon;

    if (intValue >= 1 && intValue <= 25) {
      if (intValue % 2 == 0) {
        icon = Icon(
          CupertinoIcons.arrow_up_right,
          color: Colors.blueGrey,
          size: 20,
        );
      } else {
        icon = Icon(
          CupertinoIcons.arrow_up_left,
          color: Colors.blueGrey,
          size: 20,
        );
      }
    } else {
      icon = const Text('?');
    }

    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: icon,
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 11,
    );

    final int intValue = value.toInt();
    Widget text;

    if (intValue >= 1 && intValue <= value) {
      text = Text('$intValue', style: style);
    } else {
      text = const Text('?', style: style);
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }
}
