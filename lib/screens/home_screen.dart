import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:safar_samarth/screens/graph_screen.dart';
import 'package:safar_samarth/screens/notification_screen.dart';
import 'package:safar_samarth/screens/safety_screen.dart';
import 'package:safar_samarth/utils/shared_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF157040),
        title: Center(
            child: Text(
              "Dashboard",
              style: TextStyle(
                color: Colors.white
              ),
            ),
        ),
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
      drawer: SharedDrawer(),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF157040), Color(0xFF719e56)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Hello, Shlok Mangle!',
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Things are going great with your vehicles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset("assets/images/vehicle.png", ),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //   topRight: Radius.circular(20.0),
                //   topLeft: Radius.circular(20.0),
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LAST SEEN",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Near 96, Ranade Marg, near JBCN International School in Borivali. Dahisar West. WJmbai. Maharashtra 400068. India S hours ago\n",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: 300,
                      child: FlutterMap(
                        options: MapOptions(
                          initialZoom: 9.2,
                          initialCenter: LatLng(19.0760, 72.8777),
                        ),
                        children: [
                          TileLayer(
                            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName: 'com.example.app',
                          ),
                          PolylineLayer(
                            polylines: [
                              Polyline(
                                points: [
                                  LatLng(19.0760, 72.8777), // Lisbon, Portugal
                                  LatLng(19.0760, 72.9), // London, United Kingdom
                                  LatLng(19.1760, 72.8777),
                                  LatLng(19.2760, 72.7777),
                                  LatLng(19.0760, 72.8777),
                                ],
                                color: Colors.blue,
                                strokeWidth: 2,
                              ),
                            ],
                          ),
                          CircleLayer(
                            circles: [
                              CircleMarker(
                                point: LatLng(19.0760, 72.8777),
                                radius: 500,
                                useRadiusInMeter: true,
                                color: Colors.red.withOpacity(0.3),
                                borderColor: Colors.red.withOpacity(0.7),
                                borderStrokeWidth: 2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
              ],
            ),
          ),
      )
                    ],
                    ),
    ),
      ),
    );
  }
}
