
import 'package:bms/utils/constants/colors.dart';
import 'package:bms/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class CAnimationLoaderWidget extends StatelessWidget {
  const CAnimationLoaderWidget({super.key, required this.text, required this.animation, required this.showAction, this.actionText, this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: TSizes.defaultspace,),
          Text(
            text,
            style:Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.defaultspace,),
          showAction?SizedBox(
            width: 250,
            child: OutlinedButton(onPressed: onActionPressed,
             style: OutlinedButton.styleFrom(backgroundColor:CColors.dark),
             child:Text(
            actionText!,
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: CColors.light),
             ) 
             ),
          )
          :const SizedBox(),
        ],
      ),
    );
  }
}