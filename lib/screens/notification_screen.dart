import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> title = [
  "Sleeping Driver Alert",
  "Accident Notification",
  "Phone Usage Warning",
  "Overspeeding Alert",
  "Traffic Rules Violation",
  "Lane Departure Warning",
  "Sharp Turn Reminder",
  "Red Light Violation",
  "Road Condition Alert",
  "Vehicle Maintenance Reminder",
  ];

  List<String> desc = [
  "Possible drowsy driver detected. Please take immediate action.",
  "Emergency! Accident reported. Assistance may be required.",
  "Distraction alert! Driver detected using the phone while driving.",
  "High-speed alert! Vehicle exceeding safe speed limits.",
  "Traffic rule violation detected. Please adhere to road regulations.",
  "Lane departure detected. Ensure safe driving within marked lanes.",
  "Approaching a sharp turn. Reduce speed for safety.",
  "Red light violation reported. Obey traffic signals for your safety.",
  "Advisory: Poor road conditions ahead. Drive with caution.",
  "Vehicle maintenance due. Schedule a checkup for optimal safety.",
  ];

  List<Color> colors = [
    Color(0xFFFFCCCC), // Sleeping Driver Alert - High Severity (Pastel Red)
    Color(0xFFFFDDDD), // Accident Notification - High Severity (Lighter Pastel Red)
    Color(0xFFFFE5CC), // Phone Usage Warning - Medium Severity (Pastel Orange)
    Color(0xFFFFF2CC), // Overspeeding Alert - Medium Severity (Lighter Pastel Orange)
    Color(0xFFFFFBCC), // Traffic Rules Violation - Medium Severity (Lightest Pastel Orange)
    Color(0xFFE5FFCC), // Lane Departure Warning - Low Severity (Pastel Yellow)
    Color(0xFFDDFFCC), // Sharp Turn Reminder - Low Severity (Lighter Pastel Yellow)
    Color(0xFFCCFFCC), // Red Light Violation - Low Severity (Lightest Pastel Yellow)
    Color(0xFFCCFFFF), // Road Condition Alert - Informational (Pastel Blue)
    Color(0xFFCCE5FF), // Vehicle Maintenance Reminder - Informational (Lighter Pastel Blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Container(
              width: 100,
              height: 110,
              decoration: ShapeDecoration(
                color: colors[index],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x33959DA5),
                    blurRadius: 24,
                    offset: Offset(0, 8),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title[index],
                      style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      desc[index],
                      style: TextStyle(
                        color: Color(0xFF343434),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
