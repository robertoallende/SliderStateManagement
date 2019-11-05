import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import 'package:slider_state_management/schedule.dart';

class MyChart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) =>
      PieChart(
        dataMap: createData(schedule.stateManagementTime),
        legendFontColor: Colors.blueGrey[900],
        legendFontSize: 12.0,
        legendFontWeight: FontWeight.w500,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 32.0,
        chartRadius: MediaQuery.of(context).size.width / 2.7,
        showChartValuesInPercentage: true,
        showChartValues: true,
        showChartValuesOutside: false,
        chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
        colorList: PieChart.defaultColorList,
        showLegends: true,
        decimalPlaces: 0,
        showChartValueLabel: true,
        chartValueFontSize: 12,
        chartValueFontWeight: FontWeight.bold,
        chartValueLabelColor: Colors.grey[200],
        initialAngle: 0,
      ),
    );
  }

  static Map<String, double> createData(
      double stateMgtmTime){

    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Site Management", () => 10 * stateMgtmTime);
    dataMap.putIfAbsent("Backend", () => 3);
    dataMap.putIfAbsent("UI", () => 2);
    dataMap.putIfAbsent("UX", () => 2);

    return dataMap;
  }
}