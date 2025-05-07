import 'package:bulletseed/charts/model/attempt.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SonarChart extends StatelessWidget {
  final Attempt attempt;
  final Color subtitleColor;
  final Color borderColor;
  final Color backgroundColor;
  final Color pathColor;
  final double width;
  final double height;
  final double fieldWidthX;
  final double fieldHeightY;
  final double shootingAreaStart;

  const SonarChart({
    super.key,
    required this.attempt,
    required this.fieldWidthX,
    required this.fieldHeightY,
    required this.shootingAreaStart,
    required this.subtitleColor,
    required this.width,
    required this.height,
    required this.pathColor,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          LineChart(
            curve: Curves.fastEaseInToSlowEaseOut,
            duration: const Duration(seconds: 1),
            transformationConfig: FlTransformationConfig(),
            LineChartData(
              borderData: FlBorderData(
                  border:
                      Border.fromBorderSide(BorderSide(color: borderColor))),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: topTitleWidgets,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 32,
                    interval: 1,
                    getTitlesWidget: bottomTitleWidgets,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    getTitlesWidget: sideTitleStyleAligned,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    getTitlesWidget: sideTitleStyleAligned,
                  ),
                ),
              ),
              backgroundColor: backgroundColor,
              minX: 0,
              maxX: 8,
              minY: 20,
              maxY: 60,
              lineBarsData: [
                LineChartBarData(
                  dashArray: [6, 6],
                  color: pathColor,
                  show: true,
                  dotData: FlDotData(show: false),
                  spots: [
                    FlSpot(4, 20),
                    FlSpot(6, 50),
                  ],
                ),
              ],
            ),
          ),
          ScatterChart(
            curve: Curves.fastEaseInToSlowEaseOut,
            duration: const Duration(seconds: 1),
            transformationConfig: FlTransformationConfig(),
            ScatterChartData(
              minY: shootingAreaStart,
              minX: 0,
              maxX: fieldWidthX,
              maxY: fieldHeightY,
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: topTitleWidgets2,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 32,
                    interval: 1,
                    getTitlesWidget: bottomTitleWidgets2,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    getTitlesWidget: sideTitleStyleAligned2,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    getTitlesWidget: sideTitleStyleAligned2,
                  ),
                ),
              ),
              scatterSpots: [
                ScatterSpot(
                  attempt.x!,
                  attempt.y!,
                  dotPainter: FlDotCrossPainter(),
                  show: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget sideTitleStyleAligned(double value, TitleMeta meta) {
    final style = TextStyle(
      fontWeight: FontWeight.bold,
      color: subtitleColor,
      fontSize: 11,
    );

    return SideTitleWidget(
      meta: meta,
      space: 5,
      child: Text(value.toStringAsFixed(0), style: style),
    );
  }

  Widget sideTitleStyleAligned2(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 11, color: Colors.transparent);

    return SideTitleWidget(
      meta: meta,
      space: 5,
      child: Text(value.toStringAsFixed(0), style: style),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final int intValue = value.toInt();
    Widget text;

    if (intValue == 4) {
      text = Icon(
        Icons.person,
        color: subtitleColor,
        size: 20,
      );
    } else {
      text = Text("");
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  Widget bottomTitleWidgets2(double value, TitleMeta meta) {
    final int intValue = value.toInt();
    Widget text;

    if (intValue == 4) {
      text = Icon(
        Icons.person,
        color: Colors.transparent,
        size: 20,
      );
    } else {
      text = Text("");
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  Widget topTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(
      fontWeight: FontWeight.bold,
      color: subtitleColor,
      fontSize: 11,
    );

    int? displayValue;

    if (value >= 0 && value <= 4) {
      displayValue = (40 - (value * 10)).round();
    } else if (value > 4 && value <= 8) {
      displayValue = ((value - 4) * 10).round();
    } else if (value == 4) {
      displayValue = 0;
    }

    Widget text;
    if (displayValue != null) {
      text = Text('$displayValue', style: style);
    } else {
      text = Text('?', style: style);
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  Widget topTitleWidgets2(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.transparent,
      fontSize: 11,
    );

    int? displayValue;

    if (value >= 0 && value <= 4) {
      displayValue = (40 - (value * 10)).round();
    } else if (value > 4 && value <= 8) {
      displayValue = ((value - 4) * 10).round();
    } else if (value == 4) {
      displayValue = 0;
    }

    Widget text;
    if (displayValue != null) {
      text = Text('$displayValue', style: style);
    } else {
      text = const Text('?', style: style);
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }
}
