import 'package:bms/navigatiion_menu.dart';
import 'package:bms/utils/constants/colors.dart';
import 'package:bms/utils/features/authentication/signup/authenticationrepo.dart';
import 'package:bms/utils/features/authentication/user/userrepository.dart';
import 'package:bms/utils/features/personalisation/models/usermodels.dart';
import 'package:bms/utils/network/networkmanager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupController extends GetxController {
  static SignupController get instance=> Get.find();

  //variables
final hidereenterpassword=false.obs;
final hidepassword=true.obs;
final email=TextEditingController();
final fullname=TextEditingController();
final phonenumber=TextEditingController();
final password=TextEditingController();
final reenterpass=TextEditingController();

GlobalKey<FormState> signupFormKey =GlobalKey<FormState>();
  //sign up

  void signup() async{
    try{

      


      final isConnected= await NetworkManager.instance.isConnected();
      if(!isConnected){
        return;
      }

      if (!signupFormKey.currentState!.validate()){
        
        return;
      }
      //CFullScreenLoader.openLoadingDialog("We are processing your information..","assets/images/Designer.png");
      final userCredencial=await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      final newUser=UserModel(id: userCredencial.user!.uid, fullname:fullname.text.trim(), email:email.text.trim(), phonenumber: phonenumber.text.trim());

       final userRepository=Get.put(UserRepository());
       await userRepository.saveUserRecord(newUser);

       Get.to(()=>const NAVI());

    }
    // ignore: empty_catches
    catch (e){

      Get.snackbar('Oh Snap!', e.toString(),
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CColors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.warning,color: CColors.white,));
      print(e);
    }
    //finally{
      //CFullScreenLoader.stopLoading();
    //}
  }
}