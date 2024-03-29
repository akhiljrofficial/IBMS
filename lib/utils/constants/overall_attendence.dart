






// import 'package:flutter/material.dart';

// class BusAttendanceCard extends StatelessWidget {
//   final String date;
//   final List<AttendanceRecord> attendance;

//   const BusAttendanceCard({
//     super.key,
//     required this.date,
//     required this.attendance,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               date,
//               style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10.0),
//             ListView.builder(
//               shrinkWrap: true, // Prevent list from expanding the card
//               itemCount: attendance.length,
//               itemBuilder: (context, index) {
//                 final record = attendance[index];
//                 return Column(
//                   children: [
//                     Text(
//                       "${record.name}: ",
//                       style: const TextStyle(fontSize: 14.0),
//                     ),
//                     Text(
//                       "CheckIn: ${record.checkInTime}",style: const TextStyle(fontSize: 14.0),),
//                      Text("CheckOut: ${record.checkOutTime}",
//                       style: const TextStyle(fontSize: 14.0),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AttendanceRecord {
//   final String? name;
//   final String? checkInTime;
//   final String? checkOutTime;

//   AttendanceRecord({
//     this.name,
//     this.checkInTime,
//     this.checkOutTime,
//   });
// }