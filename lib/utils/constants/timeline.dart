import 'package:bms/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class TimeLine extends StatelessWidget {
  const TimeLine({super.key, required this.isFirst, required this.isLast, required this.isPast});


  final bool isFirst;
  final bool isLast;
  final bool isPast;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: TimelineTile(
        axis: TimelineAxis.horizontal,
        alignment: TimelineAlign.start,
         isFirst: isFirst,
         isLast: isLast,
         beforeLineStyle: LineStyle(color:CColors.primary),
         indicatorStyle: IndicatorStyle(
          width: 100,
          height:30,
          color: CColors.primary,
          iconStyle: IconStyle(iconData: Icons.location_city,
          color: Colors.white)
      
         ),
      ),
    );
  }
}