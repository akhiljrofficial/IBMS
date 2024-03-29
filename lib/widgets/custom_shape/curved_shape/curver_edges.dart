import 'package:flutter/material.dart';

class CurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var path=Path();
   path.lineTo(0,size.height);

   final firstcurve=Offset(0,size.height-20);
   final lastcurve=Offset(30,size.height-20);
   
   path.quadraticBezierTo(firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);


   final firstlinecurve=Offset(0,size.height-20);
   final lastlinecurve=Offset(size.width-30,size.height-20);
   
   path.quadraticBezierTo(firstlinecurve.dx, firstlinecurve.dy, lastlinecurve.dx, lastlinecurve.dy);


   final firstlastcurve=Offset(size.width,size.height-20);
   final lastlastcurve=Offset(size.width,size.height);
   
   path.quadraticBezierTo(firstlastcurve.dx, firstlastcurve.dy, lastlastcurve.dx, lastlastcurve.dy);
   path.lineTo(size.width, 0);
   path.close();
   return path;
  
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}