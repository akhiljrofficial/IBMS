import 'package:cloud_firestore/cloud_firestore.dart';




class UserModel{
  final String id;
  String fullname;
  final String email;
  String phonenumber;



  UserModel({
    required this.id,
    required this.fullname,
    required this.email,
    required this.phonenumber
  });

   Map<String,dynamic> toJson(){
    return {
      'FullName':fullname,
      'Email':email,
      'PhoneNumber':phonenumber
    };
   }



   factory UserModel.fromSnapShot(DocumentSnapshot<Map<String,dynamic>> document){
    if(document.data()!=null){
      final data=document.data()!;
      return UserModel(id: document.id,
       fullname: data['Fullname'] ?? '',
        email: data['Email'] ?? '',
         phonenumber: data['PhoneNumber'] ?? '');
    }
    else{
      return UserModel(id: '', fullname: '', email: '', phonenumber: '');
    }
   }
}