


import 'package:flutter/material.dart';

class ContainerDay extends StatelessWidget {
  bool isActive;
  String month;
  int day;
  String date;
  void Function()? onTap;
   ContainerDay({super.key,required this.isActive,required this.month,required this.day,required this.date,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          color:isActive?Colors.blue:Colors.transparent,
      borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
         children: [
           SizedBox(height: 5,),
           Text(month,style: TextStyle(fontSize: 18,color: isActive?Colors.white:Colors.black),),
           SizedBox(height: 5,),
           Text(day.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: isActive?Colors.white:Colors.black),),
           SizedBox(height: 5,),
           Text(date,style: TextStyle(fontSize: 18,color: isActive?Colors.white:Colors.black),),
         ],

        ),
      ),
    );
  }
}
