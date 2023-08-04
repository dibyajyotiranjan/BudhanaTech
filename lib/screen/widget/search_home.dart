
import 'package:flutter/material.dart';

import '../../color.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: MyColor.white,
      alignment: Alignment.center,
      child: TextField(
        textAlign: TextAlign.start,
        maxLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search,size: 50,),
          prefixIconColor: Colors.black,
          focusColor: Colors.black,
          hintText: "Shreeji residency, Chandlodiya, Ahmeda",
          hintStyle: TextStyle(

              fontWeight: FontWeight.bold,
              fontSize: 30
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
