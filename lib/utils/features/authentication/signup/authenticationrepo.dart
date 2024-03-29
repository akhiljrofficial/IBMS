


import 'package:bms/utils/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance=>Get.find();

  final _auth=FirebaseAuth.instance;
  warning(){
    Get.snackbar('Oh Snap!','',
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CColors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.warning,color: CColors.white,));
  }



  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
  try {
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    // You can use e.code to get the specific error code
    // and e.message to get the error message.
    print('Failed with error code: ${e.code}');
    print(e.message);
    throw e; // Rethrow the FirebaseAuthException to be handled elsewhere
  }
}
  




}