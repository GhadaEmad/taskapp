

import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios,color: Color(0xff4E5AE8),)),
        centerTitle: true,
        title: Text("Add Task",style: TextStyle(color: Color(0xff4E5AE8)),),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Hi Ghada")
          ],
        ),
      ),
    );
  }
}
