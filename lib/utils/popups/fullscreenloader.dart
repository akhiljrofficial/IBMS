import 'package:bms/utils/constants/colors.dart';
import 'package:bms/utils/loader/loader_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CFullScreenLoader{
  static void openLoadingDialog(String text,String animation){
    showDialog(context: Get.overlayContext!,
    barrierDismissible: false,
     builder:(_)=>PopScope(
      canPop:false,
      child: Container(
       color: CColors.white,
       width: double.infinity,
       height: double.infinity,
       child: Column(
        children: [
          const SizedBox(height: 250,),
          CAnimationLoaderWidget(text:text, animation: animation, showAction: false)
          
        ],
       ), 
      ),
      ) 
     );
  }

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}