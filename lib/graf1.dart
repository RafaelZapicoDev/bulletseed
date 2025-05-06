// import 'dart:math';

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Graf1 extends StatelessWidget {
//   const Graf1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       spacing: 15,
//       children: [
//         // SizedBox(
//         //   width: 450,
//         //   child: Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       Text(
//         //         "TRAP",
//         //         style: TextStyle(
//         //           color: Colors.blueGrey,
//         //           fontSize: 30,
//         //           fontWeight: FontWeight.bold,
//         //         ),
//         //       ),
//         //       Row(
//         //         spacing: 5,
//         //         children: [
//         //           SizedBox(
//         //             width: 30,
//         //             child: Row(
//         //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //               children: [
//         //                 Icon(
//         //                   Icons.wb_cloudy_outlined,
//         //                   size: 25,
//         //                   color: Colors.blueGrey,
//         //                 )
//         //               ],
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             height: 20,
//         //             child: VerticalDivider(
//         //               color: Colors.blueGrey,
//         //               width: 10,
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             width: 60,
//         //             child: Row(
//         //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //               children: [
//         //                 Text(
//         //                   "20ºC",
//         //                   style: TextStyle(
//         //                     color: Colors.blueGrey,
//         //                     fontSize: 15,
//         //                     fontWeight: FontWeight.bold,
//         //                   ),
//         //                 ),
//         //                 Icon(
//         //                   Icons.thermostat_sharp,
//         //                   size: 25,
//         //                   color: Colors.blueGrey,
//         //                 )
//         //               ],
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             height: 20,
//         //             child: VerticalDivider(
//         //               color: Colors.blueGrey,
//         //               width: 10,
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             width: 60,
//         //             child: Row(
//         //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //               children: [
//         //                 Text(
//         //                   "70%",
//         //                   style: TextStyle(
//         //                     color: Colors.blueGrey,
//         //                     fontSize: 15,
//         //                     fontWeight: FontWeight.bold,
//         //                   ),
//         //                 ),
//         //                 Icon(
//         //                   Icons.water_drop_outlined,
//         //                   size: 25,
//         //                   color: Colors.blueGrey,
//         //                 )
//         //               ],
//         //             ),
//         //           ),
//         //         ],
//         //       )
//         //     ],
//         //   ),
//         // ),
//         // SizedBox(
//         //   width: 450,
//         //   child: Column(
//         //     spacing: 5,
//         //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: [
//         //       Row(
//         //         mainAxisAlignment: MainAxisAlignment.start,
//         //         children: [
//         //           Text(
//         //             "Maria José Cardoso",
//         //             style: TextStyle(color: Colors.blueGrey, fontSize: 15),
//         //           ),
//         //         ],
//         //       ),
//         //       Row(
//         //         mainAxisAlignment: MainAxisAlignment.start,
//         //         children: [
//         //           Text(
//         //             "Campo 2 - Un. Curitiba",
//         //             style: TextStyle(color: Colors.blueGrey, fontSize: 15),
//         //           ),
//         //         ],
//         //       ),
//         //       Row(
//         //         mainAxisAlignment: MainAxisAlignment.start,
//         //         children: [
//         //           Text(
//         //             "Modalidade: Treinamento",
//         //             style: TextStyle(color: Colors.blueGrey, fontSize: 15),
//         //           ),
//         //         ],
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         // SizedBox(
//         //   width: 450,
//         //   height: 100,
//         //   child: BarChart(
//         //     duration: const Duration(seconds: 1),
//         //     curve: Curves.fastLinearToSlowEaseIn,
//         //     BarChartData(
//         //       titlesData: FlTitlesData(
//         //         bottomTitles: AxisTitles(
//         //           sideTitles: SideTitles(
//         //               getTitlesWidget: bottomTitleWidgets, showTitles: true),
//         //         ),
//         //         topTitles: AxisTitles(
//         //             sideTitles: SideTitles(
//         //                 getTitlesWidget: topTitleWidgets, showTitles: true)),
//         //         leftTitles: AxisTitles(axisNameSize: 0),
//         //         rightTitles: AxisTitles(axisNameSize: 0),
//         //       ),
//         //       borderData: FlBorderData(show: false),
//         //       barGroups: List.generate(
//         //         25,
//         //         (index) {
//         //           final isTeal = Random().nextBool();
//         //           return BarChartGroupData(
//         //             x: index + 1,
//         //             barRods: [
//         //               BarChartRodData(
//         //                 width: 14,
//         //                 color: isTeal ? Colors.teal : Colors.red,
//         //                 borderRadius: BorderRadius.all(Radius.zero),
//         //                 toY: 1,
//         //               ),
//         //             ],
//         //           );
//         //         },
//         //       ),
//         //     ),
//         //   ),
//         // ),
//         Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               SizedBox(
//                 width: 450,
//                 height: 250,
//                 child: LineChart(
//                   curve: Curves.fastEaseInToSlowEaseOut,
//                   duration: const Duration(seconds: 1),
//                   transformationConfig: FlTransformationConfig(),
//                   LineChartData(
//                     gridData: FlGridData(
//                       getDrawingHorizontalLine: (value) {
//                         return FlLine(
//                           color: Colors.black38,
//                           strokeWidth: .5,
//                         );
//                       },
//                       getDrawingVerticalLine: (value) {
//                         return FlLine(color: Colors.black38, strokeWidth: .5);
//                       },
//                     ),
//                     titlesData: FlTitlesData(
//                       topTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           interval: 1,
//                           getTitlesWidget: topTitleWidgets2,
//                         ),
//                       ),
//                       bottomTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 32,
//                           interval: 1,
//                           getTitlesWidget: bottomTitleWidgets2,
//                         ),
//                       ),
//                       leftTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 30,
//                           getTitlesWidget: sideTitleStyleAligned,
//                         ),
//                       ),
//                       rightTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 30,
//                           getTitlesWidget: sideTitleStyleAligned,
//                         ),
//                       ),
//                     ),
//                     backgroundColor: Colors.white,
//                     minX: 0,
//                     maxX: 8,
//                     minY: 20,
//                     maxY: 60,
//                     lineBarsData: [
//                       LineChartBarData(
//                         dashArray: [6, 6],
//                         color: Colors.blueGrey,
//                         show: true,
//                         dotData: FlDotData(show: false),
//                         spots: [
//                           FlSpot(4, 20),
//                           FlSpot(6, 50),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget bottomTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       fontWeight: FontWeight.bold,
//       fontSize: 11,
//     );

//     final int intValue = value.toInt();
//     Widget text;

//     if (intValue >= 1 && intValue <= 25) {
//       text = Text('$intValue', style: style);
//     } else {
//       text = const Text('?', style: style);
//     }

//     return SideTitleWidget(
//       meta: meta,
//       child: text,
//     );
//   }

//   Widget topTitleWidgets2(double value, TitleMeta meta) {
//     const style = TextStyle(
//       fontWeight: FontWeight.bold,
//       fontSize: 11,
//     );

//     int? displayValue;

//     if (value >= 0 && value <= 4) {
//       displayValue = (40 - (value * 10)).round();
//     } else if (value > 4 && value <= 8) {
//       displayValue = ((value - 4) * 10).round();
//     } else if (value == 4) {
//       displayValue = 0;
//     }

//     Widget text;
//     if (displayValue != null) {
//       text = Text('$displayValue', style: style);
//     } else {
//       text = const Text('?', style: style);
//     }

//     return SideTitleWidget(
//       meta: meta,
//       child: text,
//     );
//   }

//   Widget sideTitleStyleAligned(double value, TitleMeta meta) {
//     const style = TextStyle(
//       fontWeight: FontWeight.bold,
//       fontSize: 11,
//     );

//     return SideTitleWidget(
//       meta: meta,
//       space: 5,
//       child: Text(value.toStringAsFixed(0), style: style),
//     );
//   }

//   Widget bottomTitleWidgets2(double value, TitleMeta meta) {
//     final int intValue = value.toInt();
//     Widget text;

//     if (intValue == 4) {
//       text = Icon(
//         Icons.person,
//         color: Colors.black54,
//         size: 20,
//       );
//     } else {
//       text = Text("");
//     }

//     return SideTitleWidget(
//       meta: meta,
//       child: text,
//     );
//   }

//   Widget topTitleWidgets(double value, TitleMeta meta) {
//     final int intValue = value.toInt();
//     Widget icon;

//     if (intValue >= 1 && intValue <= 25) {
//       if (intValue % 2 == 0) {
//         icon = Icon(
//           CupertinoIcons.arrow_up_right,
//           color: Colors.blueGrey,
//           size: 20,
//         );
//       } else {
//         icon = Icon(
//           CupertinoIcons.arrow_up_left,
//           color: Colors.blueGrey,
//           size: 20,
//         );
//       }
//     } else {
//       icon = const Text('?');
//     }

//     return SideTitleWidget(
//       meta: meta,
//       space: 10,
//       child: icon,
//     );
//   }
// }
