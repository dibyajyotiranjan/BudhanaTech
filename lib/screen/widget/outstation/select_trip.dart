
import 'package:flutter/material.dart';

import '../../../color.dart';

class Select_Trip extends StatefulWidget {
  const Select_Trip({super.key});

  @override
  State<Select_Trip> createState() => _Select_TripState();
}

class _Select_TripState extends State<Select_Trip> {
  bool sh_return_tik =false;
  bool sh_return_Date =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              width: 200,
              child: TextButton.icon(
                  onPressed: (){
                    sh_return_tik=true;
                    sh_return_Date=false;
                    setState(() {

                    });
                  },
                  style: TextButton.styleFrom(
                    side: BorderSide(
                        color: MyColor.grey,
                        width: 2
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary: MyColor.black,
                    backgroundColor: Colors.grey,

                  ),
                  icon: sh_return_tik?Icon(Icons.check):SizedBox(),
                  label:Text("One-Way",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
              ),
            ),
            SizedBox(width: 50,),
            SizedBox(
              height: 70,
              width: 200,
              child: TextButton.icon(
                onPressed: (){
                  setState(() {
                    sh_return_Date=true;
                    sh_return_tik=false;
                  });
                },
                icon: sh_return_Date?Icon(Icons.check):SizedBox(),
                label:Text("Round-trip",style: TextStyle(fontSize: 18),),
                style: TextButton.styleFrom(
                  side: BorderSide(
                      color: MyColor.grey,
                      width: 2
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

              ),
            ),

          ],
        ),
        SizedBox(
          height: 50,
        ),
        sh_return_Date?ListTile(
          
          tileColor: Colors.grey,
          onTap: (){
            showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2023, 8),
                lastDate: DateTime(2025)
            );
          },

          leading: Icon(Icons.calendar_month),
          title: Text("Return Date"),
        ):SizedBox()
      ],
    );
  }
}
