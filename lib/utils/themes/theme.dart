import 'package:bms/utils/themes/custom_theme/appbar_theme.dart';
import 'package:bms/utils/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:bms/utils/themes/custom_theme/checkbox_theme.dart';
import 'package:bms/utils/themes/custom_theme/chip_theme.dart';
import 'package:bms/utils/themes/custom_theme/elevatedbuttontheme.dart';
import 'package:bms/utils/themes/custom_theme/outlinebutton.dart';
import 'package:bms/utils/themes/custom_theme/textfield_theme.dart';
import 'package:bms/utils/themes/custom_theme/texttheme.dart';
import 'package:flutter/material.dart';


class Apptheme{
  Apptheme._();


  static ThemeData lighttheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTexttheme.lighttexttheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme:EElevatedbutton.lightElevatedButtonTheme ,
    appBarTheme:AApbartheme.lightAppBarTheme,
    bottomSheetTheme: BottomButtonTheme.lightBottomTheme,
    checkboxTheme:CheckboxTTheme.lightcheckboxtheme,
    chipTheme: ChipTTheme.lightchiptheme,
    inputDecorationTheme: TextformfeildTheme.lightInputDecorationanTheme,
    outlinedButtonTheme:Outlinedbuttontheme.lightoutlinedbutttontheme,




  );
  static ThemeData darktheme=ThemeData(

    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTexttheme.darktexttheme,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: EElevatedbutton.darkElevatedButtonTheme,
     appBarTheme:AApbartheme.darkAppBarTheme,
    bottomSheetTheme: BottomButtonTheme.darkBottomTheme,
    checkboxTheme:CheckboxTTheme.darkcheckboxtheme,
    chipTheme: ChipTTheme.darkchiptheme,
    inputDecorationTheme: TextformfeildTheme.darkInputDecorationanTheme,
     outlinedButtonTheme:Outlinedbuttontheme.darkoutlinedbutttontheme,

    
  );
}