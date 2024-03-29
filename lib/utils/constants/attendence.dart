import 'package:flutter/material.dart';

class AttendenceCard extends StatelessWidget {
  final String title;
  final bool status;
  
  const AttendenceCard({super.key, required this.title, required this.status});
 
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 239, 227, 113),
      shadowColor: Colors.black,
      elevation: 20,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Text(
              title,
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Text(status ? "PRESENT" :"ABSENT"),
          )
        ],
      ),
    );
  }
}