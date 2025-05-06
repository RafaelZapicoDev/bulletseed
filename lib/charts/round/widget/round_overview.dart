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
      height: 90,
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
                    width: 16,
                    color: attempts[index].hit
                        ? attempts[index].secondCartBridge
                            ? secondShot
                            : hitColor
                        : lostColor,
                    borderRadius: BorderRadius.all(
                      Radius.zero,
                    ),
                    toY: 1,
                  ),
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

    icon = Icon(
      getDirectionIcon(attempts[intValue - 1].direction),
      color: Colors.blueGrey,
      size: 20,
    );

    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: icon,
    );
  }

  IconData getDirectionIcon(Direction direction) {
    return switch (direction) {
      Direction.north => CupertinoIcons.arrow_up,
      Direction.south => CupertinoIcons.arrow_down,
      Direction.east => CupertinoIcons.arrow_right,
      Direction.west => CupertinoIcons.arrow_left,
      Direction.northeast => CupertinoIcons.arrow_up_left,
      Direction.northwest => CupertinoIcons.arrow_up_right,
      Direction.southeast => CupertinoIcons.arrow_down_right,
      Direction.southwest => CupertinoIcons.arrow_down_left,
    };
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(
      color: subtitleColor,
      fontWeight: FontWeight.w600,
      fontSize: 11,
    );

    final int intValue = value.toInt();
    Widget text;

    if (intValue >= 1 && intValue <= value) {
      text = Text('$intValue', style: style);
    } else {
      text = Text('?', style: style);
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }
}
