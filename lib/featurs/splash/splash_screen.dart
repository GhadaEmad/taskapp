

import 'package:flutter/material.dart';
import 'package:mytask/core/utils/app_image.dart';
import 'package:mytask/core/utils/app_strings.dart';
import 'package:mytask/featurs/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImge.logoimage),
              SizedBox(height: 10,),
              Text(AppStrings.appname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(AppStrings.appdescrebtion,style: TextStyle(color: Colors.grey),)

            ],
          ),
        )
    ))
    ;
  }
}
