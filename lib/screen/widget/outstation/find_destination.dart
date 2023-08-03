
import 'package:flutter/material.dart';

import '../../../color.dart';

class Find_Destination extends StatefulWidget {
  const Find_Destination({super.key});

  @override
  State<Find_Destination> createState() => _Find_DestinationState();
}

class _Find_DestinationState extends State<Find_Destination> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
     // margin: EdgeInsets.all(30),
      color: MyColor.grey,
      alignment: Alignment.center,
      child: TextField(
        textAlign: TextAlign.start,
        maxLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search,size: 50,),
          prefixIconColor: Colors.black,
          focusColor: Colors.black,
          hintText: "Mysuru, Karnataka, India",
          hintStyle: TextStyle(

              fontWeight: FontWeight.bold,
              fontSize: 30
          ),
          label: Text("Destination"),
          //labelText: "Destination",
          labelStyle: TextStyle(
            color: MyColor.black,
            fontSize: 25,
            // height: 1, // 0,1 - label will sit on top of border
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColor.grey,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
