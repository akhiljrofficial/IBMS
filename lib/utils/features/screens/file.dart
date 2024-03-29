//import "package:firebase_core/firebase_core.dart";
import 'package:bms/utils/constants/colors.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';




class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RelTimeData(),
    );
  }
}
class RelTimeData extends StatelessWidget {
   RelTimeData({super.key});
  final ref =FirebaseDatabase.instance.ref('attendence');

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Attendence",style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),
      automaticallyImplyLeading: false,backgroundColor: CColors.primary,),
    body:Column(
      children: [
        Expanded(
          child:FirebaseAnimatedList(query:ref ,itemBuilder:(context,snapshot,animation,index){
            return ListTile(
              title: Text(
                        snapshot.child('uid').value.toString() == '639108151312' ? 'AMAL' :
                        snapshot.child('uid').value.toString() == '338968156' ? 'AKHIL' : 'Unknown UID'
                        
                         
                        
),

            );
          }))
      ],
    ),
    );
  }
}
 










// import 'package:bms/utils/constants/colors.dart';
// import 'package:bms/utils/constants/overall_attendence.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';

// class ScreenFile extends StatelessWidget {
//   ScreenFile({super.key});

//   final ref =FirebaseDatabase.instance.ref('attendence');


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Overall Attendence",style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),
//       automaticallyImplyLeading: false,backgroundColor: CColors.primary,),
//       body:
//       SingleChildScrollView(
//         child: Column(
//           children: [
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],),
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],),
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],),
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],),
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],),
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],),
//             // BusAttendanceCard(date:"10/2/23",attendance: [AttendanceRecord(name: "Akhil", checkInTime: "10:00", checkOutTime:"3:00")],)
//           Expanded(
//           child:FirebaseAnimatedList(query:ref ,itemBuilder:(context,snapshot,animation,index){
//             return ListTile(
//               title: Text(
//                         snapshot.child('uid').value.toString() == '639108151312' ? 'AMAL' :
//                         snapshot.child('uid').value.toString() == '338968156' ? 'AKHIL' : 'Unknown UID'
                        
                         
                        
// ),

//             );
//           }))



//           ],
//         ),
//       ),
      
   
   
   
//     );
//   }
// }