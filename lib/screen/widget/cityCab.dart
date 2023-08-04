
import 'package:dibyajyoti_technical_task/screen/vechil_list.dart';
import 'package:flutter/material.dart';

import '../../color.dart';
import 'outstation/find_destination.dart';

class CityCab extends StatelessWidget {
  const CityCab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: MyColor.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 5,
                      spreadRadius: 1,
                     // offset: Offset(4,4)
                  )
                ],
                border: Border.all(color: MyColor.black),
      borderRadius: BorderRadius.circular(13),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Find_Destination(),
          ),
          SizedBox(height: 50,),
          Container(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Vechil_List()));
              },
              child: Text("Next",style: TextStyle(color: MyColor.white,fontSize: 30),),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: MyColor.black
              ),
            ),
          )
        ],
      ),
    );;
  }
}
