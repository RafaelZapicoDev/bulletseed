import 'package:bulletseed/charts/model/attempt.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MapChart extends StatelessWidget {
  final Attempt attempt;
  final Color subtitleColor;
  final Color borderColor;
  final Color backgroundColor;
  final Color shootingAreaStartColor;
  final Color pathColor;
  final Color targetColor;
  final double width;
  final double targetSize;
  final double height;
  final double fieldWidthX;
  final double fieldHeightY;
  final double shootingAreaStart;

  const MapChart({
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
    required this.targetSize,
    required this.targetColor,
    required this.shootingAreaStartColor,
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
              clipData: FlClipData.all(),
              borderData: FlBorderData(
                border: Border.fromBorderSide(
                  BorderSide(
                    color: borderColor,
                  ),
                ),
              ),
              gridData: FlGridData(
                show: false,
              ),
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
              maxX: fieldWidthX,
              minY: 0,
              maxY: fieldHeightY,
              lineBarsData: [
                LineChartBarData(
                  dashArray: [
                    6,
                    6,
                  ],
                  color: pathColor,
                  show: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  spots: [
                    FlSpot(
                      fieldWidthX / 2,
                      0,
                    ),
                    FlSpot(
                      attempt.x!,
                      attempt.y!,
                    ),
                  ],
                ),
                LineChartBarData(
                  color: shootingAreaStartColor,
                  show: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  spots: [
                    FlSpot(0, shootingAreaStart),
                    FlSpot(
                      fieldWidthX,
                      shootingAreaStart,
                    ),
                  ],
                  belowBarData: BarAreaData(
                    show: true,
                    color: shootingAreaStartColor.withAlpha(
                      25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ScatterChart(
            curve: Curves.fastEaseInToSlowEaseOut,
            duration: const Duration(seconds: 1),
            transformationConfig: FlTransformationConfig(),
            ScatterChartData(
              gridData: FlGridData(verticalInterval: 2.5),
              minY: 0,
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
                  dotPainter: FlDotCrossPainter(
                    size: targetSize,
                    color: targetColor,
                  ),
                  show: true,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Icon(
              Icons.person,
              color: subtitleColor,
              size: 20,
            ),
          ),
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

    if (intValue == meta.max ~/ 2) {
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

  Widget bottomTitleWidgets2(double value, TitleMeta meta) {
    final int intValue = value.toInt();
    Widget text;

    if (intValue == (meta.max / 2).round()) {
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

    double middle = meta.max / 2;
    double displayValue;

    if (value < middle) {
      displayValue = meta.max - (value * 2);
    } else {
      displayValue = (value - middle) * 2;
    }

    int rounded = displayValue.round();

    if (rounded % 5 != 0 && rounded != meta.max.round()) {
      return const SizedBox.shrink();
    }

    return SideTitleWidget(
      meta: meta,
      child: Text(rounded.toString(), style: style),
    );
  }

  Widget topTitleWidgets2(double value, TitleMeta meta) {
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
      text = Text(
        '$displayValue',
        style: TextStyle(color: Colors.transparent),
      );
    } else {
      text = const Text(
        ' ',
        style: TextStyle(color: Colors.transparent),
      );
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }
}
