import "package:bms/utils/constants/size.dart";
import "package:bms/utils/features/authentication/signup/signup_controller.dart";
import "package:bms/utils/validator/validator.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_state_manager/get_state_manager.dart";

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding:const  EdgeInsets.all(TSizes.defaultspace)
        ,child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('IBMS',style: Theme.of(context).textTheme.headlineLarge,),
              ],
            ),
            const SizedBox(height: TSizes.spacebtwitems,),
            Text("SIGN UP HERE",style: Theme.of(context).textTheme.headlineSmall,),
            const SizedBox(height: TSizes.spacebtwsections,)

            ,Form(
              key: controller.signupFormKey,
              child:Column(
              children: [
                 TextFormField(
                  controller: controller.fullname,
                  validator: (value)=>Cvalidator.validateEmptyText("Username", value),
                   decoration: const InputDecoration(
                     labelText:"FULLNAME",
                     prefixIcon: Icon(Icons.edit_note_rounded)
                   ),
                 ),
                const SizedBox(height: TSizes.spacebtwinputfields,)

                ,TextFormField(
                  controller: controller.email,
                  validator: (value)=>Cvalidator.validateEmail(value),
                  decoration: const InputDecoration(
                   labelText: "EMAIL",
                   prefixIcon: Icon(Icons.edit_note_rounded))
                  ), 
                  const SizedBox(height: TSizes.spacebtwinputfields,),
                  TextFormField(
                    controller: controller.phonenumber,
                    validator: (value)=>Cvalidator.validatePhoneNumber(value),
                    decoration: const InputDecoration(
                      labelText: "PHONENUMBER",
                      prefixIcon: Icon(Icons.edit_note_rounded)
                    ),
                  ),
                  
                  const SizedBox(height: TSizes.spacebtwinputfields,),
                  Obx(
                    ()=> TextFormField(
                      controller: controller.password,
                      validator: (value)=>Cvalidator.validatePassword(value),
                      obscureText: controller.hidepassword.value,
                      decoration:InputDecoration(
                        labelText: "PASSWORD",
                        prefixIcon: const Icon(Icons.edit_note_rounded),
                        suffixIcon:IconButton(onPressed: ()=> controller.hidepassword.value=!controller.hidepassword.value,
                         icon: Icon(controller.hidepassword.value? Icons.visibility_off : Icons.visibility)) 
                        
                      ),
                    
                    ),
                  ),

                  const SizedBox(height: TSizes.spacebtwinputfields,),
                  Obx(
                    ()=> TextFormField(
                      controller: controller.reenterpass,
                      validator: (value)=>Cvalidator.validatePassword(value),
                      obscureText: controller.hidereenterpassword.value,
                      decoration:InputDecoration(
                        labelText: "RE-ENTER PASSWORD",
                        prefixIcon: const Icon(Icons.edit_note_rounded),
                        suffixIcon:IconButton(onPressed: ()=> controller.hidereenterpassword.value=!controller.hidereenterpassword.value,
                         icon: Icon(controller.hidereenterpassword.value? Icons.visibility_off : Icons.visibility)) 
                        
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: TSizes.spacebtwitems,),
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                    
                    controller.signup();
                  }, child: const Text("create account")),)
                 
              ],
            ) )
          ],
        )
        ,),
      ),

    );
  }
}