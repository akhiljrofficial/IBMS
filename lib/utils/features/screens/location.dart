import 'package:bms/utils/constants/colors.dart';
import 'package:bms/utils/constants/size.dart';
import 'package:bms/utils/constants/studentcard.dart';
import 'package:flutter/material.dart';

class ScreenLocation extends StatelessWidget {
  const ScreenLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location",style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),
      automaticallyImplyLeading: false,backgroundColor: CColors.primary,),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            StudentCard(name: "AKHIL J R", registerNumber: "221107", profileImageUrl:"assets/images/IBMS-logos_black.png"),
            SizedBox(height: TSizes.spacebtwsections,),
            StudentCard(name: "AMAL J R", registerNumber: "221109", profileImageUrl:"assets/images/IBMS-logos_black.png"),
            SizedBox(height: TSizes.spacebtwsections,),
            StudentCard(name: "AMRITHA J R", registerNumber: "221107", profileImageUrl:"assets/images/IBMS-logos_black.png"),
          ],
        ),
      ),
    );
  }
}