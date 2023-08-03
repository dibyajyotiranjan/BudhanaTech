
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

            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: Colors.yellow,
                border: Border.all(color: MyColor.black),
                borderRadius: BorderRadius.circular(13)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Find_Destination(),
              ],
            ),
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
