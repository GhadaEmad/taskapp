

import 'package:flutter/material.dart';
import 'package:mytask/core/utils/app_strings.dart';
import 'package:mytask/featurs/task/add_task.dart';
import 'package:mytask/featurs/widjet/container/container_day.dart';
import 'package:mytask/featurs/widjet/container/container_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int slected=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
child: Column(

                children: [
                  Row(
                    children: [

 Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
 children: [
    Text(AppStrings.welcomapp("Ghada"),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff4E5AE8)),)
     ,Text (AppStrings.text,style: TextStyle(color: Colors.grey),)],),
),
 Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          image:DecorationImage(image: NetworkImage("https://img.freepik.com/free-psd/sunset-silhouette-tree-circular-frame-nature-scene-orange-sky-grass-landscape-design-element_632498-30365.jpg")),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start
                          ,children: [
                            Text(AppStrings.day,style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(AppStrings.today,style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddTask()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xff4E5AE8),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.add,size: 15,color: Colors.white,),
                              Text("Add Task",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerDay(isActive:slected==0,month:  "OCT",day: 30,date: "MON", onTap: () {
                        setState(() {
                          slected = 0;
                        });
                      },),
                      ContainerDay(isActive: slected==1,month:  "OCT",day: 31,date: "TUE", onTap: () {
                        setState(() {
                          slected = 1;
                        });
                      },),
                      ContainerDay(isActive: slected==2,month:  "NOV",day: 1,date: "WED", onTap: () {
                        setState(() {
                          slected = 2;
                        });
                      },),
                      ContainerDay(isActive: slected==3,month:  "NOV",day: 2,date: "THU", onTap: () {
                        setState(() {
                          slected = 3;
                        });
                      },),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ContainerTask(titel: "FIrst Tak_1", startTime:"02_25 AM_2-40 AM" , note:"I Will do it", cotaiColor: 0xff4E5AE8)
                 , SizedBox(height: 10,),
                  ContainerTask(titel: "First Tak_2", startTime:"02_25 AM_2-40 AM" , note:"I Will do it", cotaiColor: 0xffFF4667)

                ,  SizedBox(height: 10,),
                  ContainerTask(titel: "First Taks_3", startTime:"02_25 AM_2-40 AM" , note:"I Will do it", cotaiColor: 0xffFF8746)


                ]  ),
          )
      ),
    );
  }
}
