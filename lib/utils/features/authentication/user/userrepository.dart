


import 'package:bms/utils/features/personalisation/models/usermodels.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db=FirebaseFirestore.instance;




  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());

    }catch (e) {
      throw 'something went wrong';
    }
  }
}