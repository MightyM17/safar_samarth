import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:safar_samarth/screens/graph_screen.dart';
import 'package:safar_samarth/screens/notification_screen.dart';
import 'package:safar_samarth/utils/shared_drawer.dart';

class SafetyScreen extends StatefulWidget {
  const SafetyScreen({Key? key}) : super(key: key);

  @override
  State<SafetyScreen> createState() => _SafetyScreenState();
}

class _SafetyScreenState extends State<SafetyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Score Summary",  style: TextStyle(color: Colors.white,),)),
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
           color: Colors.blue,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  '8.0',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'out of 10',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                Text(
                  'FOR LAST WEEK\n Dec 08, 2023 to Dec 15, 2023',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row(
                     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Idling",
                         style: TextStyle(
                           fontSize: 24,
                         ),
                       ),
                       SizedBox(width: 40,),
                       Row(
                         children: [
                           Container(
                             height: 10,
                             width: 50,
                             color: Colors.red,
                           ),
                           Container(
                             height: 10,
                             width: 150,
                             color: Colors.grey,
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "25%",
                         style: TextStyle(
                           fontSize: 24,
                         ),
                       ),
                     ],
                   ),
                    SizedBox(height: 30,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Speed\nVariance",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 112,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 10,
                              width: 88,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "56%",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wrong\nGear",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              color: Colors.green,
                            ),
                            Container(
                              height: 10,
                              width: 190,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "5%",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Over\nSpeed",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(width: 33,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 20,
                              color: Colors.green,
                            ),
                            Container(
                              height: 10,
                              width: 180,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "10%",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),
                    Text(
                      "STATS",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "• You oversped only 5 times!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "• You were idling 50 times!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "• You were distracted 29 times!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "• You too a few too many harsh brakes!",
                      style: TextStyle(
                        fontSize: 18,
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
