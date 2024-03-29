import 'package:bms/utils/constants/attendence.dart';
import 'package:bms/utils/constants/colors.dart';
import 'package:bms/utils/constants/size.dart';
import 'package:bms/utils/constants/timeline.dart';
import 'package:bms/widgets/appbar/appbar.dart';
import 'package:bms/widgets/custom_shape/container/primary_header_container.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: TSizes.appbarheight,
                    child: Cappbar(
                      title: Column(
                        children: [
                          Text("IBMS",style: Theme.of(context).textTheme.headlineMedium!.apply(color: CColors.grey),)
                        ],
                      ),
                      actions: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active))
                      ],
                    ),
                    
                  ),
                  const SizedBox(height: TSizes.spacebtwsections,)
                  ,Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("WELCOME,",style: Theme.of(context).textTheme.headlineMedium!.apply(color:const Color.fromARGB(255, 241, 216, 25)),),
                        Text("USER",style: Theme.of(context).textTheme.bodyLarge!.apply(color:const Color.fromARGB(255, 220, 220, 220)),),
                        
                      ],
                    ),
                  )
                ],
              ),
              )
            ,const SizedBox(height: TSizes.spacebtwsections,),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(" Today's Status",style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black)),
                  const SizedBox(height: TSizes.spacebtwitems,),
                  const SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AttendenceCard(title: "CHECK IN", status: false),
                        AttendenceCard(title: "CHECK OUT", status:false)
                      ],
                    ),
                  )
                ],
              ),
            )
            ,const SizedBox(height:TSizes.spacebtwsections),
            Column(
              children: [
                Text("Bus Status",style:Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black),),
                const SizedBox(height: TSizes.spacebtwitems,)
                ,const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TimeLine(isFirst: true, isLast:false, isPast:true),
                    TimeLine(isFirst: false, isLast: false, isPast: true),
                    TimeLine(isFirst: false, isLast: true, isPast: false),
                    
                  ],
                )

              ],
            )
            
          ],
        ),
        
      ),
    );
  }
}

