
import 'package:dibyajyoti_technical_task/color.dart';
import 'package:flutter/material.dart';

class Vechil extends StatefulWidget {
  Map<String,dynamic> data;
  Vechil({required this.data});
  @override
  State<Vechil> createState() => _VechilState();
}

class _VechilState extends State<Vechil> {
  // int? index;
bool shape=false;
bool tr =true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        //margin: EdgeInsets.all(15),
        decoration: shape?BoxDecoration(
          color: MyColor.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 15,
              spreadRadius: 1,
              // offset: Offset(4,4)
            )
          ],
          border: Border.all(color: MyColor.black),
          borderRadius: BorderRadius.circular(13),
        ):null,
        width: double.infinity,
       // padding: shape?EdgeInsets.all(10):null,
        child: ListTile(
          leading: SizedBox(height: 70,width: 100, child: Image.asset("assets/images/car1.jpg",fit: BoxFit.cover,width: 100,height: 70,)),
          title: Text(widget.data["title"],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          subtitle: Text(widget.data["desc"],style: TextStyle(fontSize: 23,),),
          trailing: Column(
            children: [
              Text("\u{20B9}${widget.data["price"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColor.green),),
              Icon(Icons.info_outline)
            ],
          ),
          contentPadding: EdgeInsets.all(20),

          //hoverColor: Colors.yellow,
          style: ListTileStyle.list,
          shape: shape?RoundedRectangleBorder(
            side: BorderSide(color: MyColor.black),
            borderRadius: BorderRadius.circular(10)
          ):null,
          onTap: (){
            shape=true;
            setState(() {

            });
         },
        ),
      ),
    );
  }
}
