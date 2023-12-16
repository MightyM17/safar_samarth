import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Container(
              width: 100,
              height: 110,
              decoration: ShapeDecoration(
                color: Colors.white,
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
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '4000 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eerf',
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
