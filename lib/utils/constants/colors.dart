import 'package:flutter/material.dart';

class CColors{
  CColors._();


  static const Color primary=Color(0xFF4b68ff);
  static const Color secondary=Color(0xFFFFE248);
  static const Color accent=Color(0xFFb0c7ff);


  static const Gradient lineargradient=LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: 
  [Color(0xffff9a9e),
  Color(0xfffad0c4),
  Color(0xfffad0c4)
  ]);

  static const Color textprimary=Color(0xFF333333);
  static const Color textsecondary=Color(0xFF6C7570);
  static const Color textwhite=Colors.white;


  static const Color light=Color(0xFFF6F6F6);
  static const Color dark=Color(0xFF272727);
  static const Color primarybackground=Color(0xFFF3F5FF);


  static const Color lightcontainer = Color(0xFFF6F6F6);
  static Color darkcontainer=CColors.white.withOpacity(0.1);


  static const Color buttonprimary =Color(0xFF4b68ff);
  static const Color buttonsecondary=Color(0xFF6c7570);
  static const Color buttondisabled=Color(0xFFC4C4C4);

  static const Color borderprimary=Color(0xFFD9D9D9);
  static const Color bordersecondary=Color(0xFFE6E6E6);
  
  static const Color error =Color(0xFFD32F2F);
  static const Color sucess= Color(0xFF388E3C);
  static const Color warning= Color(0xFFF57C00);
  static const Color info =Color(0xFF197602);

  static const Color black=Color(0xFF232323);
  static const Color darkergrey=Color(0xFF4F4F4F);
  static const Color darkgrey=Color(0xFF939393);
  static const Color grey=Color(0xFFE0E0E0);
  static const Color softgrey=Color(0xFFF4F4F4);
  static const Color lightgrey=Color(0xFFF9F9F9);
  static const Color white=Color(0xFFFFFFFF);



}