import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:safar_samarth/screens/home_screen.dart';
import 'package:safar_samarth/screens/notification_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({Key? key}) : super(key: key);

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Statistics")),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => NotificationScreen(),
                transitionDuration: const Duration(milliseconds: 300),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ),
            );
          }, icon: Icon(Icons.notifications))
        ],
      ),
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  CircleAvatar(),
                  SizedBox(width: 20,),
                  Text(
                    "Shlok Mangle",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              ListTile(
                  title: Text("Dashboard"),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => HomeScreen(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
                  }
              ),
              Divider(),
              ListTile(
                  title: Text("Statistics"),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => GraphScreen(),
                        transitionDuration: const Duration(milliseconds: 300),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
                  }
              ),
              Divider(),
            ],
          ),
        ),
      body: Center(
          child: Column(
            children: [
              Container(
                  height: 200,
                  child: SfCartesianChart(
                    // Initialize category axis
                      primaryXAxis: CategoryAxis(),

                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                          // Bind data source
                            dataSource:  <SalesData>[
                              SalesData('Jan', 35),
                              SalesData('Feb', 28),
                              SalesData('Mar', 34),
                              SalesData('Apr', 32),
                              SalesData('May', 40)
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales
                        )
                      ]
                  )
              ),
              Text("Miles Driven"),
              Container(
                  height: 200,
                  child: SfCartesianChart(
                    // Initialize category axis
                      primaryXAxis: CategoryAxis(),

                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                          // Bind data source
                            dataSource:  <SalesData>[
                              SalesData('Jan', 9),
                              SalesData('Feb', 9.1),
                              SalesData('Mar', 9.1),
                              SalesData('Apr', 8.8),
                              SalesData('May', 8.6)
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales
                        )
                      ]
                  )
              ),
              Text("Safety Score"),
              Container(
                  height: 200,
                  child: SfCartesianChart(
                    // Initialize category axis
                      primaryXAxis: CategoryAxis(),

                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                          // Bind data source
                            dataSource:  <SalesData>[
                              SalesData('Jan', 1700),
                              SalesData('Feb', 2800),
                              SalesData('Mar', 3000),
                              SalesData('Apr', 3000),
                              SalesData('May', 3600)
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales
                        )
                      ]
                  )
              ),
              Text("Violations Done"),
            ],
          )
      )
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

