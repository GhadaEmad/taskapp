


import 'package:flutter/material.dart';

class ContainerTask extends StatelessWidget {
 int cotaiColor;
 String titel;
 String startTime;
 String note;
   ContainerTask({super.key,required this.titel,required this.startTime,required this.note,required this.cotaiColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      width:double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Color(cotaiColor),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titel,style: TextStyle(color:Colors.white,fontSize:17),),
                SizedBox(height: 10,),
                Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.access_time,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text(startTime,style: TextStyle(color:Colors.white),),

                  ],
                ),
                SizedBox(height: 10,),
                Text(note,style: TextStyle(color:Colors.white,fontSize:17),),

              ],
            ),
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 70, // ارتفاع الخط
                child: VerticalDivider(
                  color: Colors.grey, // لون الفاصل
                  thickness: 2, // سمك الخط
                  width: 20, // المسافة بين الفاصل والعناصر الأخرى
                ),
              ),
              RotatedBox(
                quarterTurns: 3, // يدور النص بزاوية 90 درجة
                child: Text(
                  'TODO',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
