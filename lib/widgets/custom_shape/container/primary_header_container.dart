import 'package:bms/utils/constants/colors.dart';
import 'package:bms/widgets/custom_shape/container/circular_container.dart';
import 'package:bms/widgets/custom_shape/curved_shape/curved_edge_widget.dart';
import 'package:flutter/material.dart';



class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
            color: CColors.primary,
            padding: const EdgeInsets.only(bottom:0),
            child: SizedBox(
              height: 300,
              child: Stack(
    children: [
      Positioned(top:-150,right: -250,child:  CircularContainer(backgroundcolor: CColors.textwhite.withOpacity(0.1),)),
      Positioned(top:100,right: -300,child:  CircularContainer(backgroundcolor: CColors.textwhite.withOpacity(0.1),)),
      child,
    ],
              ),
            ),
          ),
    );
  }
}
