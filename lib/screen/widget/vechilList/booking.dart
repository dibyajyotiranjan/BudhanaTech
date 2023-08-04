
import 'package:flutter/material.dart';

import '../../../color.dart';

class Book_vechil extends StatefulWidget {
  const Book_vechil({super.key});

  @override
  State<Book_vechil> createState() => _Select_TripState();
}

class _Select_TripState extends State<Book_vechil> {
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
                        color: MyColor.greyDark,
                        width: 4
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary: MyColor.black,
                    backgroundColor: sh_return_tik?Colors.grey:MyColor.white,

                  ),
                  icon: sh_return_tik?Icon(Icons.check):SizedBox(),
                  label:Text("Book For MySelf",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
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
                label:Text("Book For Other",style: TextStyle(fontSize: 18),),
                style: TextButton.styleFrom(
                  side: BorderSide(
                      color: MyColor.greyDark,

                      width: 4
                  ),
                  primary: Colors.black,
                  backgroundColor: sh_return_Date?Colors.grey:MyColor.white,
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
        Container(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (){
            },
            child: Text("Book",style: TextStyle(color: MyColor.white,fontSize: 30),),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: MyColor.black
            ),
          ),
        )
      ],
    );
  }
}
