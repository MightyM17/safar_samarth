import 'package:flutter/material.dart';
import 'package:safar_samarth/screens/graph_screen.dart';
import 'package:safar_samarth/screens/home_screen.dart';
import 'package:safar_samarth/screens/safety_screen.dart';
import 'package:safar_samarth/screens/video_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';
class SharedDrawer extends StatelessWidget {
  const SharedDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          ListTile(
              title: Text("Score"),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => SafetyScreen(),
                    transitionDuration: const Duration(milliseconds: 300),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              }
          ),
          Divider(),
          ListTile(
              title: Text("Live Feed"),
              onTap: () {
                //launchUrlString("http://192.168.0.103:5000/video_feed", mode: LaunchMode.inAppWebView);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => WebViewPage("http://192.168.137.197:5000/video_feed","Feed"),
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
    );
  }
}