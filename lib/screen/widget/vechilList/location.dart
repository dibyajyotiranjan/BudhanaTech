
import 'package:dibyajyoti_technical_task/color.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Location_Vechil extends StatelessWidget {
  const Location_Vechil({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                  ListTile(
                    leading: Icon(Icons.location_on_outlined,color: MyColor.green,),
                    title: Text("Source Location",style: TextStyle(fontSize: 20),),
                    subtitle: Text("Banglore,Karnataka, India",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: MyColor.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 150),
                    child: SizedBox(
                      //width: 800,
                      child: Divider(
                        color: Colors.grey,
                        indent: 2,
                        endIndent: 0,
                        height: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined,color: MyColor.green,),
                    title: Text("Source Location",style: TextStyle(fontSize: 20),),
                    subtitle: Text("Banglore,Karnataka, India",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: MyColor.black),),
                  ),
           Divider(
              color: MyColor.greyDark,
              indent: 1,
              endIndent: 0,
              height: 5,

            ),
          ],
        ),
        Positioned(
         left: 27,
          child: SizedBox(
            height: 150,
              child: DottedLine(dashLength: 5, dashGapLength: 5,direction: Axis.vertical,lineLength: 40,)),
        )
      ],
    );
  }
}
