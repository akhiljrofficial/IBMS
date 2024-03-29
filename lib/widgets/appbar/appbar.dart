import 'package:bms/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Cappbar extends  StatelessWidget implements PreferredSizeWidget {
  const Cappbar({
  super.key, 
  this.title, 
  this.showBackArrow=false, 
  this.leadingIcon, 
  this.actions, 
  this.leadingOnPressed
  });


  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
    child:AppBar(
      
      automaticallyImplyLeading: false,
      leading: showBackArrow 
      ? IconButton(onPressed: ()=>Get.back(), icon:const Icon(Icons.keyboard_arrow_left))
      : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null
      ,title: title,
      actions:actions,
    ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}