import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  final data = const [
    FlSpot(0, 1),
    FlSpot(1, 3),
    FlSpot(2, 2),
    FlSpot(3, 5),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFFF1BCEF),
          body: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(50, 60, 0, 0),
            child: SizedBox(
                width: 500,
                height: 500,
                // child: LineChart(
                //   LineChartData(
                //     gridData: FlGridData(show: true),
                //     titlesData: const FlTitlesData(
                //       bottomTitles: AxisTitles(
                //         sideTitles: SideTitles(
                //           showTitles: true,
                //           reservedSize: 22,
                //           // getTextStyles: (value) => const TextStyle(
                //           //   color: Colors.blue,
                //           //   fontWeight: FontWeight.bold,
                //           //   fontSize: 16,
                //           // ),
                //           /*getTitles: (value) {
                //     switch (value.toInt()) {
                //       case 0:
                //         return 'JAN';
                //       case 1:
                //         return 'FEB';
                //       case 2:
                //         return 'MAR';
                //       case 3:
                //         return 'APR';
                //     }
                //     return '';
                //   }, */
                //         ),
                //       ),
                //       leftTitles: const AxisTitles(
                //         sideTitles: SideTitles(),
                //       ),
                //     ),
                //     borderData: FlBorderData(show: false),
                //     lineBarsData: [
                //       LineChartBarData(
                //         spots: data,
                //         isCurved: true,
                //         color: Color.fromARGB(255, 21, 23, 24),
                //         barWidth: 2,
                //         belowBarData: BarAreaData(show: false),
                //         dotData: FlDotData(show: false),
                //       ),
                //     ],
                //   ),
                // ),

                child: BarChart(BarChartData(
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                            toY: 5, color: Color.fromARGB(255, 104, 4, 63)),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                            toY: 10, color: const Color(0xFF181818)),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                            toY: 8,
                            color: const Color.fromARGB(255, 104, 4, 63)),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(toY: 6, color: const Color(0xFF181818)),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                            toY: 3,
                            color: const Color.fromARGB(255, 104, 4, 63)),
                      ],
                    ),
                  ],
                ))),
          )),
    );
  }
}
