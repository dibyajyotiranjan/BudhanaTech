
import 'package:dibyajyoti_technical_task/screen/widget/outstation/find_destination.dart';
import 'package:flutter/material.dart';

import '../../color.dart';
import '../vechil_list.dart';

class Rental extends StatelessWidget {
  const Rental({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select Packages",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 50,),
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("80 Hr",style: TextStyle(fontSize: 20),),
                      Text("80 KM",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
                SizedBox(height: 50,),
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
              child: Text("Next",style: TextStyle(color: MyColor.white),),
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
