import 'package:flutter/material.dart';




class Attendance {
  final DateTime date;
  final DateTime checkInTime;
  final DateTime checkOutTime;

  Attendance({required this.date, required this.checkInTime, required this.checkOutTime});
}


class AttendanceCard extends StatelessWidget {
  final Attendance attendance;

  AttendanceCard({required this.attendance});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Date: ${attendance.date.toLocal()}'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Check-in: ${attendance.checkInTime.toLocal()}'),
            Text('Check-out: ${attendance.checkOutTime.toLocal()}'),
          ],
        ),
      ),
    );
  }
}

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  DateTimeRange? selectedDateRange;
  List<Attendance> attendanceList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () async {
              final DateTimeRange? dateRange = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2020),
                lastDate: DateTime(2100),
              );
              if (dateRange != null) {
                setState(() {
                  selectedDateRange = dateRange;
                  // Fetch attendance data for the selected range
                  // For demonstration, we're generating dummy data
                  attendanceList = List.generate(5, (index) {
                    final date = DateTime.now().subtract(Duration(days: index));
                    return Attendance(
                      date: date,
                      checkInTime: date,
                      checkOutTime: date.add(Duration(hours: 8)),
                    );
                  });
                });
              }
            },
            child: Text('Select Date Range'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: attendanceList.length,
              itemBuilder: (context, index) {
                return AttendanceCard(attendance: attendanceList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}


