import 'package:bms/utils/constants/iconx_icons.dart';
import 'package:bms/utils/features/screens/file.dart';
import 'package:bms/utils/features/screens/home.dart';
import 'package:bms/utils/features/screens/location.dart';
import 'package:bms/utils/features/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NAVI extends StatelessWidget {
  const NAVI({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return Scaffold(
      
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          
          destinations: const [
           NavigationDestination(icon: Icon(Iconx.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconx.file_empty), label: "Attendence"),
            NavigationDestination(icon: Icon(Iconx.location_on), label: "Location"),
              NavigationDestination(icon: Icon(Iconx.account_circle), label: "Profile"),
        ],),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  final screens= [const ScreenHome(),const profile(),const ScreenLocation(),AttendanceScreen()];
}