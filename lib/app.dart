import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 243, 245),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                            color: Colors.green,
                            size: 20,
                          ),
                          Text(
                            "FULANO ATIRADOR - BRASIL",
                            style: TextStyle(
                              color: Colors.green,
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
                          sideTitles:
                              SideTitles(reservedSize: 30, showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          axisNameWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rodada"),
                            ],
                          ),
                          sideTitles:
                              SideTitles(reservedSize: 30, showTitles: true),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles:
                              SideTitles(reservedSize: 30, showTitles: true),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles:
                              SideTitles(reservedSize: 30, showTitles: true),
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
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.amber,
                                  Colors.orange,
                                  Colors.pinkAccent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 5,
                              color: Colors.red,
                            ),
                            BarChartRodData(
                              borderRadius: BorderRadius.all(Radius.zero),
                              width: 30,
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.lightGreen,
                                  Colors.green,
                                  Colors.teal,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 7,
                            ),
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
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.amber,
                                  Colors.orange,
                                  Colors.pinkAccent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 6,
                              color: Colors.red,
                            ),
                            BarChartRodData(
                              borderRadius: BorderRadius.all(Radius.zero),
                              width: 30,
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.lightGreen,
                                  Colors.green,
                                  Colors.teal,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 5,
                            ),
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
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.amber,
                                  Colors.orange,
                                  Colors.pinkAccent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 7,
                              color: Colors.red,
                            ),
                            BarChartRodData(
                              borderRadius: BorderRadius.all(Radius.zero),
                              width: 30,
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.lightGreen,
                                  Colors.green,
                                  Colors.teal,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
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
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.amber,
                                  Colors.orange,
                                  Colors.pinkAccent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 5,
                              color: Colors.red,
                            ),
                            BarChartRodData(
                              borderRadius: BorderRadius.all(Radius.zero),
                              width: 30,
                              gradient: LinearGradient(
                                tileMode: TileMode.decal,
                                colors: [
                                  Colors.lightGreen,
                                  Colors.green,
                                  Colors.teal,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              toY: 7,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
