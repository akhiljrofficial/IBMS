
import 'package:bms/navigatiion_menu.dart';
import 'package:bms/utils/constants/size.dart';
import 'package:bms/utils/constants/spacing_style.dart';
import 'package:bms/utils/features/authentication/signup/signup_controller.dart';
import 'package:bms/utils/features/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {

  Future<FirebaseApp> intializeFirebase() async{
  FirebaseApp firebaseApp =await Firebase.initializeApp(
     options: FirebaseOptions(
      apiKey:  "AIzaSyCQZHFrank5aRkScOHsqgD2XWZpreWIlhg", // paste your api key here
      appId: "1:485871613569:android:c3ecc3dbf37afe83d5ff80", //paste your app id here
      messagingSenderId: "485871613569", //paste your messagingSenderId here
      projectId: "new1-26233", //paste your project id here
    ),
  );
  return firebaseApp;
}


static Future<User?> loginUsingEmailPassword({
  required String email,
  required String password,
  required BuildContext context}) async{
  
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  try{
    UserCredential userCredential=await auth.signInWithEmailAndPassword(
      email: email, 
      password: password);
      user=userCredential.user;
  }on FirebaseAuthException catch (e){
    if (e.code=="user-not-found"){
      print("No User found for that email");
    }
  }
  return user;

  }


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
     TextEditingController _emailController=TextEditingController();
    TextEditingController _passwordController=TextEditingController();
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding:Spacingstyle.paddingwihappbarheight,
        child: Column(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                height: 150,
                width: 200,
                image: AssetImage('assets/images/IBMS-logos_black.png'))
                ,const SizedBox(height: TSizes.sm,)
                ,Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: Text('WELCOME,',style: Theme.of(context).textTheme.headlineMedium,),
                )
            ],
          )
          ,Form(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: TSizes.spacebtwsections),
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                  
                  prefixIcon: Icon(Icons.arrow_right),
                  labelText:'EMAIL'
                ),)
                ,const SizedBox(height: TSizes.spacebtwinputfields,)
                ,Obx(
                  ()=>
                    TextFormField(
                      controller:_passwordController,
                      obscureText: controller.hidepassword.value,
                      decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.arrow_right),
                      suffixIcon:IconButton(onPressed: ()=> controller.hidepassword.value=!controller.hidepassword.value,
                         icon: Icon(controller.hidepassword.value? Icons.visibility_off : Icons.visibility)) 
                      ,labelText:'PASSWORD'
                      
                    )
                    ),
                  
                )
                ,const SizedBox(height: TSizes.spacebtwinputfields / 2,)
                ,Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){})
                        ,const Text('Remember Me')
                      ],
                    )
            
            
                    ,TextButton(onPressed: (){}, child: const Text('forgot password'))
                  ],
                ),
                const SizedBox(height: TSizes.spacebtwsections,),
            
                SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: () async{
                  User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                print(user);
                if(user !=null){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NAVI()));
                }
                }
                , child: const Text('SIGN IN'))),
                const SizedBox(height: 20,),
                
                 SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScreenSignup()));
                 }
                 ,style:ElevatedButton.styleFrom(backgroundColor:Colors.white,), child: const Text('SIGN UP',style: TextStyle(color: Colors.black),),)),
                  const SizedBox(height: TSizes.spacebtwsections,)
              ],
            ),
          ))
          ],
        ),
        )),
      );
  }
}