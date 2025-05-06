import 'package:bulletseed/graf1.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  double test1 = 1;
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 243, 245),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Wrap(
              runSpacing: 100,
              spacing: 50,
              alignment: WrapAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "PONTOS POR RODADA",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 100,
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 20,
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.cyan,
                                size: 20,
                              ),
                              Text(
                                "FULANO ATIRADOR - BRASIL",
                                style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 20,
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.pink,
                                size: 20,
                              ),
                              Text(
                                "FURANO ATIRADOR - JAPÃO",
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 300,
                      child: BarChart(
                        curve: Curves.fastEaseInToSlowEaseOut,
                        duration: const Duration(seconds: 1),
                        BarChartData(
                          borderData: FlBorderData(
                            show: true,
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: const Color.fromARGB(255, 104, 138, 155),
                              ),
                            ),
                          ),
                          titlesData: FlTitlesData(
                            show: true,
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  reservedSize: 30, showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              axisNameWidget: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rodada"),
                                ],
                              ),
                              sideTitles: SideTitles(
                                  reservedSize: 30, showTitles: true),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  reservedSize: 30, showTitles: true),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  reservedSize: 30, showTitles: true),
                            ),
                          ),
                          alignment: BarChartAlignment.start,
                          groupsSpace: 20,
                          maxY: 10,
                          minY: 0,
                          rotationQuarterTurns: 0,
                          gridData: FlGridData(
                            show: true,
                            drawHorizontalLine: true,
                            drawVerticalLine: true,
                          ),
                          backgroundColor: Colors.white,
                          extraLinesData: ExtraLinesData(
                            horizontalLines: [
                              HorizontalLine(
                                y: 4.5,
                                color: Colors.transparent,
                              ),
                            ],
                          ),
                          barGroups: [
                            BarChartGroupData(
                              groupVertically: false,
                              barsSpace: 3,
                              x: 0,
                            ),
                            BarChartGroupData(
                              groupVertically: false,
                              barsSpace: 3,
                              x: 1,
                              barRods: [
                                BarChartRodData(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  width: 30,
                                  toY: 5,
                                  color: Colors.pink,
                                ),
                                BarChartRodData(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                    width: 30,
                                    toY: 7,
                                    color: Colors.cyan),
                              ],
                            ),
                            BarChartGroupData(
                              groupVertically: false,
                              barsSpace: 3,
                              x: 2,
                              barRods: [
                                BarChartRodData(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  width: 30,
                                  toY: 6,
                                  color: Colors.pink,
                                ),
                                BarChartRodData(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                    width: 30,
                                    toY: 5,
                                    color: Colors.cyan),
                              ],
                            ),
                            BarChartGroupData(
                              groupVertically: false,
                              barsSpace: 3,
                              x: 3,
                              barRods: [
                                BarChartRodData(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  width: 30,
                                  toY: 7,
                                  color: Colors.pink,
                                ),
                                BarChartRodData(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  width: 30,
                                  color: Colors.cyan,
                                  toY: 6,
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              groupVertically: false,
                              barsSpace: 3,
                              x: 4,
                              barRods: [
                                BarChartRodData(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                  width: 30,
                                  toY: 5,
                                  color: Colors.pink,
                                ),
                                BarChartRodData(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                    width: 30,
                                    toY: 7,
                                    color: Colors.cyan),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Graf1(),
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "ACERTOS E DESVIOS",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 100,
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    Text(
                                      "ACERTOS EM CHEIO",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.deepOrange,
                                      size: 20,
                                    ),
                                    Text(
                                      "DESVIO À ESQUERDA",
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.pink,
                                      size: 20,
                                    ),
                                    Text(
                                      "DESVIO VERTICAL",
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.purple,
                                      size: 20,
                                    ),
                                    Text(
                                      "DESVIO À DIREITA",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 350,
                      child: PieChart(
                        curve: Curves.fastEaseInToSlowEaseOut,
                        duration: const Duration(seconds: 1),
                        PieChartData(
                          sectionsSpace: 5,
                          startDegreeOffset: 0,
                          sections: [
                            PieChartSectionData(
                              titlePositionPercentageOffset: 1.5,
                              //if title is not set then default title is value

                              value: 7,
                              color: Colors.green,
                              radius: 50,
                            ),
                            PieChartSectionData(
                              titlePositionPercentageOffset: 1.5,
                              value: 3,
                              color: Colors.pink,
                            ),
                            PieChartSectionData(
                              titlePositionPercentageOffset: 1.5,
                              value: 2,
                              color: Colors.deepOrange,
                            ),
                            PieChartSectionData(
                              titlePositionPercentageOffset: 1.5,
                              value: 4,
                              color: Colors.deepPurple,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "MÉDIA POR CATEGORIA %",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 100,
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.cyan,
                                      size: 20,
                                    ),
                                    Text(
                                      "TRAP",
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    Text(
                                      "TRAP AMERICANO",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.pinkAccent,
                                      size: 20,
                                    ),
                                    Text(
                                      "DOUBLE TRAP",
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.deepPurple,
                                      size: 20,
                                    ),
                                    Text(
                                      "SKEET",
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 300,
                      child: LineChart(
                        curve: Curves.fastEaseInToSlowEaseOut,
                        duration: const Duration(seconds: 1),
                        transformationConfig: FlTransformationConfig(),
                        LineChartData(
                          titlesData: FlTitlesData(
                            topTitles: AxisTitles(axisNameSize: 0),
                            rightTitles: AxisTitles(axisNameSize: 0),
                            bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 32,
                              interval: 1,
                              getTitlesWidget: bottomTitleWidgets,
                            )),
                          ),
                          backgroundColor: Colors.white,
                          minX: 1,
                          maxX: 12,
                          minY: 0,
                          maxY: 100,
                          lineBarsData: [
                            LineChartBarData(
                              barWidth: 3,
                              color: Colors.cyan,
                              isCurved: true,
                              curveSmoothness: 0.2,
                              isStepLineChart: false,
                              isStrokeCapRound: true,
                              preventCurveOverShooting: false,
                              isStrokeJoinRound: true,
                              spots: [
                                FlSpot(1, 20),
                                FlSpot(2, 25),
                                FlSpot(3, 40),
                                FlSpot(4, 46),
                                FlSpot(5, 47),
                                FlSpot(6, 50),
                                FlSpot(7, 55),
                                FlSpot(8, 40),
                                FlSpot(9, 50),
                                FlSpot(10, 51),
                                FlSpot(11, 70),
                                FlSpot(12, 75),
                              ],
                            ),
                            LineChartBarData(
                              barWidth: 3,
                              color: Colors.pinkAccent,
                              isCurved: true,
                              curveSmoothness: 0.2,
                              isStepLineChart: false,
                              isStrokeCapRound: true,
                              preventCurveOverShooting: false,
                              isStrokeJoinRound: true,
                              spots: [
                                FlSpot(1, 25),
                                FlSpot(2, 30),
                                FlSpot(3, 35),
                                FlSpot(4, 35),
                                FlSpot(5, 43),
                                FlSpot(6, 40),
                                FlSpot(7, 45),
                                FlSpot(8, 47),
                                FlSpot(9, 45),
                                FlSpot(10, 55),
                                FlSpot(11, 62),
                                FlSpot(12, 70),
                              ],
                            ),
                            LineChartBarData(
                              barWidth: 3,
                              color: Colors.green,
                              isCurved: true,
                              curveSmoothness: 0.2,
                              isStepLineChart: false,
                              isStrokeCapRound: true,
                              preventCurveOverShooting: false,
                              isStrokeJoinRound: true,
                              spots: [
                                FlSpot(1, 10),
                                FlSpot(2, 17),
                                FlSpot(3, 30),
                                FlSpot(4, 37),
                                FlSpot(5, 37),
                                FlSpot(6, 45),
                                FlSpot(7, 50),
                                FlSpot(8, 56),
                                FlSpot(9, 50),
                                FlSpot(10, 45),
                                FlSpot(11, 40),
                                FlSpot(12, 48),
                              ],
                            ),
                            LineChartBarData(
                              barWidth: 3,
                              color: Colors.deepPurple,
                              isCurved: true,
                              curveSmoothness: 0.2,
                              isStepLineChart: false,
                              isStrokeCapRound: true,
                              preventCurveOverShooting: false,
                              isStrokeJoinRound: true,
                              spots: [
                                FlSpot(1, 50),
                                FlSpot(2, 50),
                                FlSpot(3, 52),
                                FlSpot(4, 48),
                                FlSpot(5, 50),
                                FlSpot(6, 57),
                                FlSpot(7, 70),
                                FlSpot(8, 67),
                                FlSpot(9, 65),
                                FlSpot(10, 58),
                                FlSpot(11, 70),
                                FlSpot(12, 80),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "META MENSAL (%)",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 300,
                      child: AnimatedRadialGauge(
                        curve: Curves.easeInOutBack,
                        duration: const Duration(seconds: 3),
                        value: test1,
                        radius: 200,
                        builder: (context, child, value) => GestureDetector(
                          child: Center(
                            child: Text(
                              "${(value * 100).toInt()}%",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ),
                        axis: GaugeAxis(
                          progressBar: GaugeBasicProgressBar(
                            color: Colors.green,
                          ),
                          style: GaugeAxisStyle(
                            cornerRadius: Radius.circular(20),
                            background: const Color.fromARGB(20, 0, 0, 0),
                          ),
                          pointer: GaugePointer.triangle(
                              width: 2, height: 2, color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "PONTOS POR TORNEIO",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 100,
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Text(
                                      "BRASIL",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                    Text(
                                      "JAPÃO",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                    Text(
                                      "FINLÂNDIA",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.purple,
                                      size: 20,
                                    ),
                                    Text(
                                      "NORUEGA",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 350,
                      child: PieChart(
                        curve: Curves.fastEaseInToSlowEaseOut,
                        duration: const Duration(seconds: 1),
                        PieChartData(
                          centerSpaceRadius: 0,
                          sectionsSpace: 5,
                          startDegreeOffset: 0,
                          sections: [
                            PieChartSectionData(
                              value: 70,
                              color: Colors.green,
                              radius: 150,
                            ),
                            PieChartSectionData(
                              value: 30,
                              color: Colors.cyan,
                              radius: 150,
                            ),
                            PieChartSectionData(
                              value: 20,
                              radius: 150,
                              color: Colors.red,
                            ),
                            PieChartSectionData(
                              radius: 150,
                              value: 40,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('JAN', style: style);
        break;
      case 2:
        text = const Text('FEV', style: style);
        break;
      case 3:
        text = const Text('MAR', style: style);
        break;
      case 4:
        text = const Text('ABR', style: style);
        break;
      case 5:
        text = const Text('MAI', style: style);
        break;
      case 6:
        text = const Text('JUN', style: style);
        break;
      case 7:
        text = const Text('JUL', style: style);
        break;
      case 8:
        text = const Text('AGO', style: style);
        break;
      case 9:
        text = const Text('SET', style: style);
        break;
      case 10:
        text = const Text('OUT', style: style);
        break;
      case 11:
        text = const Text('NOV', style: style);
        break;
      case 12:
        text = const Text('DEZ', style: style);
        break;
      default:
        text = const Text('MÊS?', style: style);
    }

    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: text,
    );
  }
}
