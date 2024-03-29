import 'package:bms/utils/features/screens/login.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotologin();
    super.initState();
  }

  Future<void> gotologin() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ScreenLogin()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/IBMS-logos_black.png',height: 300,),),
        
        ],
      ),
    );
  }
}